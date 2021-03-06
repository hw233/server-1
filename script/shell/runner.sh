#!/bin/bash

# script path
script=$(dirname "$0")
# enter project root directory
cd "${script}/../../" || exit

# get first device(not virtual)
# DEVICE=$(diff /sys/class/net/ /sys/devices/virtual/net/ | grep -P "(?i)only\s*in\s*/sys/class/net/" | head -n 1 | awk '{print $NF}')
for device in $(diff /sys/class/net/ /sys/devices/virtual/net/ | grep -P "(?i)only\s*in\s*/sys/class/net/" | awk '{print $NF}');do
    [[ -z $(ip address show "${device}" 2>&1 1>/dev/null) ]] && DEVICE="${device}" && break
done
# if physical adapter not found get first non-lo up device
# ifconfig deprecated
# [[ -z ${DEVICE} ]] && DEVICE=$(ifconfig | grep -Po "^[^(lo)]\w+(?=:)" | head -n 1)
[[ -z ${DEVICE} ]] && DEVICE=$(ip address show up scope link | head -n 1 | awk -F ":" '{print $2}' | sed 's/[[:space:]]//g')
# select ipv4 address
IP=$(ip -4 address show "${DEVICE}" | head -n 2 | tail -n 1 | awk '{print $2}' | awk -F "/" '{print $1}')
# select ipv6 address
#IP=$(ip -6 address show "${DEVICE}" | head -n 2 | tail -n 1 | awk '{print $2}' | awk -F "/" '{print $1}')

# date time format
DATE_TIME=$(date "+%Y_%m_%d__%H_%M_%S")

# erl param
ATOM=1048576
PROCESSES=1048576
# Set the distribution buffer busy limit (dist_buf_busy_limit) in kilobytes. Valid range is 1-2097151. Default is 1024.
ZDBBL=1024
HPDS=2
# chose config
if [[ "$1" == "" ]] ;then
    NAME=main
    NODE="${NAME}@${IP}"
    CONFIG="config/${NAME}"
    CONFIG_FILE="${CONFIG}.config"
    DUMP="${NAME}_erl_crash.dump"
elif [[ -f $1 ]];then
    NAME=$(echo "$1"  | awk -F "/" '{print $NF} ' | awk -F "." '{print $1}')
    NODE="${NAME}@${IP}"
    CONFIG="config/${NAME}"
    CONFIG_FILE="${CONFIG}.config"
    DUMP="${NAME}_erl_crash.dump"
else
    NAME=$1
    NODE="${NAME}@${IP}"
    CONFIG="config/${NAME}"
    CONFIG_FILE="${CONFIG}.config"
    DUMP="${NAME}_erl_crash.dump"
fi
# first cookie define
COOKIE=$(grep -Po "(?<=cookie,)\s*.*(?=\})" "${CONFIG_FILE}" 2>/dev/null | sed 's/[[:space:]]//g')
# set default cookie when config cookie not define 
if [[ "${COOKIE}" == "" ]];then COOKIE=erlang; fi
# log
KERNEL_LOG="logs/${NAME}_${DATE_TIME}.log"
SASL_LOG="logs/${NAME}_${DATE_TIME}.sasl"

# random node name
# this will loop always in erlang os:cmd
# echo $(strings /dev/urandom | tr -dc A-Za-z0-9 | head -c 16)
function random() {
    echo "$(head -c 256 /dev/urandom | tr -dc A-Za-z0-9 | head -c 16)@${IP}"
}

# collect all nodes
function nodes {
    # find config/ -name "*.config" -exec basename {} ".config" \; | awk -v IP="${IP}" '{print "'\''"$1"'@$IP\''"}' | paste -sd ","
    # find config/ -name "*.config" -exec basename {} ".config" \; | sed "s/^/'/g;s/$/@${IP}'/g" | paste -sd ","
    grep -r "node_type.*${1}" config/ | grep -Po "\w+(?=\.config)" | sed "s/^/'/g;s/$/@${IP}'/g" | paste -sd ","
}

# collect all modules
function modules {
    echo "$@" | sed "s/^\|$/'/g;s/[[:space:]]/\',\'/g"
}

function helps() {
    echo "usage: run program   
    name [bg | sh | stop]                     run/stop/remote shell config/name.config by mode  
    [name | =] [load | force] modules,...     load modules on node/nodes by load mode  
    [name | =] evaluate script                execute script on node/nodes  
    +                                         start all  
    -                                         stop all  "
}

# start
if [[ -z $1 ]];then
    # list all run nodes
    helps
elif [[ "${1:0:1}" == "+" && "$2" == "" ]];then
    # run all nodes
    # find config/ -name "*.config" | while read -r config
    grep -r "node_type.*${1:1}" config/ | awk -F ":" '{print $1}' | while read -r config
    do
        # run as detached mode by default
        $0 "${config}" bg &
    done;
elif [[ -f ${CONFIG_FILE} && "$2" == "" ]];then
    # interactive mode, print sasl log to tty
    erl +K true +sub true +pc unicode -hidden -pa beam -pa config -pa config/app +hpds "${HPDS}" +P "${PROCESSES}" +t "${ATOM}" +zdbbl "${ZDBBL}" -setcookie "${COOKIE}" -name "${NODE}" -config "${CONFIG}" -env ERL_CRASH_DUMP "${DUMP}" -boot start_sasl -s main start
elif [[ -f ${CONFIG_FILE} && "$2" == "bg" ]];then
    # detached mode, print sasl log to file
    erl -detached -noinput +K true +sub true +pc unicode -hidden -pa beam -pa config -pa config/app +hpds "${HPDS}" +P "${PROCESSES}" +t "${ATOM}" +zdbbl "${ZDBBL}" -setcookie "${COOKIE}" -name "${NODE}" -config "${CONFIG}" -env ERL_CRASH_DUMP "${DUMP}" -boot start_sasl -kernel error_logger \{file,\""${KERNEL_LOG}"\"\} -sasl sasl_error_logger \{file,\""${SASL_LOG}"\"\} -s main start
elif [[ -f ${CONFIG_FILE} && "$2" == "sh" ]];then
    # remote shell node
    erl +K true +sub true +pc unicode -hidden -pa beam -pa config -pa config/app +hpds "${HPDS}" +P "${PROCESSES}" +t "${ATOM}" +zdbbl "${ZDBBL}" -setcookie "${COOKIE}" -name "$(random)" -config "${CONFIG}" -remsh "${NODE}"
elif [[ -f ${CONFIG_FILE} && "$2" == "stop" ]];then
    # stop one node
    erl -noinput +K true +sub true +pc unicode -hidden -pa beam -pa config -pa config/app +hpds "${HPDS}" +P "${PROCESSES}" +t "${ATOM}" +zdbbl "${ZDBBL}" -setcookie "${COOKIE}" -name "$(random)" -eval "main:stop_remote(['${NODE}']), erlang:halt()."
elif [[ "${1:0:1}" == "-" && "$2" == "" ]];then
    # stop all node
    erl -noinput +K true +sub true +pc unicode -hidden -pa beam -pa config -pa config/app +hpds "${HPDS}" +P "${PROCESSES}" +t "${ATOM}" +zdbbl "${ZDBBL}" -setcookie "${COOKIE}" -name "$(random)" -eval "main:stop_remote([$(nodes "${1:1}")]), erlang:halt()."
elif [[ -f ${CONFIG_FILE} && "$2" == "eval" && $# -gt 2 ]];then
    # eval script on one node
    erl -noinput +K true +sub true +pc unicode -hidden -pa beam -pa config -pa config/app +hpds "${HPDS}" +P "${PROCESSES}" +t "${ATOM}" +zdbbl "${ZDBBL}" -setcookie "${COOKIE}" -name "$(random)" -eval "parser:evaluate(['${NODE}'], \"${3}\"), erlang:halt()."
elif [[ "${1:0:1}" == "=" && "$2" == "eval" && $# -gt 2 ]];then
    # eval script on all node (nodes provide by config file)
    erl -noinput +K true +sub true +pc unicode -hidden -pa beam -pa config -pa config/app +hpds "${HPDS}" +P "${PROCESSES}" +t "${ATOM}" +zdbbl "${ZDBBL}" -setcookie "${COOKIE}" -name "$(random)" -eval "parser:evaluate([$(nodes "${1:1}")], \"${3}\"), erlang:halt()."
elif [[ "$2" == "eval" && $# == 2 ]];then
    echo no eval script
    exit 1
elif [[ -f ${CONFIG_FILE} ]] && [[ "$2" == "load" || "$2" == "force" ]] && [[ $# -gt 2 ]];then
    # load module on one node
    mode=$2
    shift 2
    modules=$(modules "$@")
    erl -noinput +K true +sub true +pc unicode -hidden -pa beam -pa config -pa config/app +hpds "${HPDS}" +P "${PROCESSES}" +t "${ATOM}" +zdbbl "${ZDBBL}" -setcookie "${COOKIE}" -name "$(random)" -eval "beam:load(['${NODE}'], [${modules}], '${mode}'), erlang:halt()." 1> >(sed $'s/module/\e[32m&\e[m/g;s/skip/\e[34m&\e[m/g;s/error/\e[31m&\e[m/g'>&1) 2> >(sed $'s/.*/\e[31m&\e[m/'>&2)
elif [[ "${1:0:1}" == "=" ]] && [[ "$2" == "load" || "$2" == "force" ]] && [[ $# -gt 2 ]];then
    # load module on all node (nodes provide by config file)
    type=${1:1}
    mode=$2
    shift 2
    modules=$(modules "$@")
    erl -noinput +K true +sub true +pc unicode -hidden -pa beam -pa config -pa config/app +hpds "${HPDS}" +P "${PROCESSES}" +t "${ATOM}" +zdbbl "${ZDBBL}" -setcookie "${COOKIE}" -name "$(random)" -eval "beam:load([$(nodes "${type}")], [${modules}], '${mode}'), erlang:halt()." 1> >(sed $'s/module/\e[32m&\e[m/g;s/skip/\e[34m&\e[m/g;s/error/\e[31m&\e[m/g'>&1) 2> >(sed $'s/.*/\e[31m&\e[m/'>&2)
elif [[ "$2" == "load" || "$2" == "force" ]] && [[ $# == 2 ]];then
    echo no load module
    exit 1
elif [[ -f ${CONFIG_FILE} && "$2" == "sql" && $# == 2 ]];then
    HOST=$(grep -Po "\{\s*host\s*,\s*\".*?\"\s*\}" "${CONFIG_FILE}" | grep -Po "(?<=\").*?(?=\")")
    USER=$(grep -Po "\{\s*user\s*,\s*\"\w+\"\s*\}" "${CONFIG_FILE}" | grep -Po "(?<=\")\w+(?=\")")
    PASSWORD=$(grep -Po "\{\s*password\s*,\s*\"\w+\"\s*\}" "${CONFIG_FILE}" | grep -Po "(?<=\")\w+(?=\")")
    DATABASE=$(grep -Po "\{\s*database\s*,\s*\"\w+\"\s*\}" "${CONFIG_FILE}" | grep -Po "(?<=\")\w+(?=\")")
    if [[ ${DATABASE} ]];then
        if [[ $(type mycli 2>/dev/null) ]];then
            # use mycli
            mycli --host="${HOST}" --user="${USER}" --password="${PASSWORD}" --database="${DATABASE}"
        else
            # use mysql
            mysql --host="${HOST}" --user="${USER}" --password="${PASSWORD}" --database="${DATABASE}"
        fi
    else
        echo "${CONFIG_FILE}: cannot find database name in this config file" >&2
    fi
elif [[ -f ${CONFIG_FILE} && "$2" == "sql" && $# -gt 2 ]];then
    HOST=$(grep -Po "\{\s*host\s*,\s*\".*?\"\s*\}" "${CONFIG_FILE}" | grep -Po "(?<=\").*?(?=\")")
    USER=$(grep -Po "\{\s*user\s*,\s*\"\w+\"\s*\}" "${CONFIG_FILE}" | grep -Po "(?<=\")\w+(?=\")")
    PASSWORD=$(grep -Po "\{\s*password\s*,\s*\"\w+\"\s*\}" "${CONFIG_FILE}" | grep -Po "(?<=\")\w+(?=\")")
    DATABASE=$(grep -Po "\{\s*database\s*,\s*\"\w+\"\s*\}" "${CONFIG_FILE}" | grep -Po "(?<=\")\w+(?=\")")
    if [[ ${DATABASE} ]];then
        if [[ $(type mycli 2>/dev/null) ]];then
            # use mycli
            shift 2
            echo "${DATABASE} execute result:"
            mycli --host="${HOST}" --user="${USER}" --password="${PASSWORD}" --database="${DATABASE}" --execute="$*"
            echo
        else
            # use mysql
            shift 2
            echo "${DATABASE} execute result:"
            mysql --host="${HOST}" --user="${USER}" --password="${PASSWORD}" --database="${DATABASE}" --execute="$*"
            echo
        fi
    else
        echo "${CONFIG_FILE}: cannot find database name in this config file"
        echo
    fi
elif [[ "${1:0:1}" == "=" && "$2" == "sql" && $# -gt 2 ]];then
    # run all nodes
    # for one in $(find config/ -name "*.config" | grep -Po "\w+(?=\.config)");do
    # find config/ -name "*.config" | while read -r config
    grep -r "node_type.*${1:1}" config/ | awk -F ":" '{print $1}' | while read -r config
    do
        # run as detached mode by default
        $0 "${config}" sql "$3"
    done;
elif [[ "$2" == "sql" ]] && [[ $# == 2 ]];then
    echo no execute sql script
    exit 1
elif [[ ! -f ${CONFIG_FILE} ]];then
    echo "config file: ${CONFIG_FILE} not found"
    exit 1
elif [[ -n $2 ]];then
    echo "unknown option: $2"
fi

