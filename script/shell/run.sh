#!/bin/bash


cd ../../config/


main(){
    erl +K true +P 1000000 -smp true -pa ../beam -name erlang@127.0.0.1 -setcookie erlang -boot start_sasl -config main -s main start
}

debug(){
    erl +K true +P 1000000 -smp true -pa ../beam -name erlang@127.0.0.1 -setcookie erlang -boot start_sasl -config main -s debug_application start
}



## execute function
if [[ $# = 0 ]];then
    main
else
    $1
fi

cd ../script/shell/
