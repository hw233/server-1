# erlang

##  **文件目录树说明**
    |---beam                          : beam 文件目录  
    |---include                       : 头文件目录
    |---logs                          : 程序运行日志目录
    |---config                        : 配置目录  
        |---cert                      : ssl证书目录  
    |---script                        : 脚本目录  
        |---batch                     : windows 下使用
        |---shell                     : linux 下使用
        |---sql                       : sql脚本
        |---debug                     : Debug 模式 Makefile
        |---release                   : Release 模式 Makefile
    |---src                           : 源代码目录
        |---application               : 应用程序目录
        |---service                   : 应用程序服务目录
        |---net                       : 网络I/O
        |---cluster                   : 集群相关工具  
        |---tool                      : 通用工具  
            |---assistant             : 框架数据辅助工具
            |---extension             : 标准库扩展工具
            |---misc                  : 其他各种各样的/杂乱的工具
        |---debug                     : 调试工具相关  
        |---robot                     : 机器人  
        |---example                   : Erlang Actor 示例代码
        |---lib                       : 第三方依赖库  
            |---mysql                 : MySQL驱动  
            |---volley                : Volley进程池
            |---algorithm             : 算法目录
        |---make                      : 代码构造器目录  
            |---maker                 : 代码构造器  
            |---script                : 代码构造规则脚本(配置)  
            |---protocol              : 协议代码构造规则脚本(配置)
        |---module                    : 业务逻辑模块  
            |---account               : 账户  
            |---role                  : 角色
            |---asset                 : 资产
            |---item                  : 物品  
            |---quest                 : 任务  
            |---shop                  : 商店  
            |---mail                  : 邮件  
            |---key                   : 兑换码  
            |---guild                 : 公会  
            |---relation              : 关系(好友/黑名单)
            |---chat                  : 聊天  
            |---notice                : 公告  
            |---rank                  : 排行  
            |---sorter                : 排序器  
            |---log                   : 数据日志  
            |---attribute             : 属性  
            |---skill                 : 技能  
            |---buff                  : Buff  
            |---battle                : 战斗系统  
            |---map                   : 地图系统  
            |---monster               : 怪物  
            |---war                   : 战场  
            |---dungeon               : 副本  
            |---activity              : 活动  


##  **脚本说明**
    1.script/batch/maker.bat
    usage: compile all file by default  
        clean                                     remove all beam  
        maker                                     compile maker  
        pt/protocol number                        make protocol file
        excel [xml|table] [filename|table name]   convert xml/table to table/xml  
        record name                               make record file  
        sql name [select|join] [all]              make sql file  
        data name                                 make base data config file  
        log name                                  make log file  
        word                                      make sensitive word file  
        key [-amount|-type|-prefix]               make active key  
        config                                    make erlang application config interface
        router                                    maker protocol route
        lsc                                       maker load/save/clean code

    2.script/batch/run.bat
    usage: run program (main config by default)  
        name                                      run config/name.config by interactive mode

    3.script/shell/maker.sh
    usage: compile all file by default
        clean                                     remove all beam  
        maker                                     compile maker  
        now                                       append now to update sql script  
        need date(Y-M-D)                          cut from date(start) to now(end), write to need sql script  
        pt/protocol number                        make protocol file
        excel [xml|table] [filename|table name]   convert xml/table to table/xml  
        record name                               make record file  
        sql name [select|join] [all]              make sql file  
        data name                                 make base data config file  
        lua name                                  make lua data config file  
        log name                                  make log file  
        word                                      make sensitive word file  
        key [-amount|-type|-prefix]               make active key  
        config                                    make erlang application config interface
        router                                    maker protocol route
        lsc                                       maker load/save/clean code

    4.script/shell/run.sh
    usage: run program (run all config dir config file by bg mode if name not passed)
        name [bg | rsh | stop | load(module...)]  run/stop config/name.config by mode
        +                                         start all
        -                                         stop all


##  **功能文件放置说明**
    例如物品 (玩家进程)  
    路径 :
        src/module/item/  
    包含文件 :
        item.erl                   : 物品数据操作模块  
        item_data.erl              : 物品数值配置表模块  
        item_sql.erl               : 玩家物品数据SQL模块  
        item_handler.erl           : 上行协议处理模块
        item_protocol.erl          : 协议打包解包模块  

    例如兑换码 (单独进程)
    路径 :
        src/module/key/
    包含文件 :
        key_server.erl             : 兑换码数据操作和进程模块  
        key_data.erl               : 兑换码数值配置表模块  
        key_sql.erl                : 玩家兑换码数据SQL模块  
        key_handler.erl            : 上行协议处理模块
        key_protocol.erl           : 协议打包解包模块  

    例如公会 (单独进程)  
    路径 :  
        src/module/guild/
    包含文件 :
        guild.erl                  : 公会数据操作模块
        guild_server.erl           : 公会进程模块  
        guild_sql.erl              : 玩家公会数据SQL模块  
        guild_handler.erl          : 上行协议处理模块
        guild_protocol.erl         : 协议打包解包模块  

    使用代码构造器maker构建/更新代码
        maker.[bat/sh] record *    : *.hrl
        maker.[bat/sh] sql *_sql   : *_sql.erl  
        maker.[bat/sh] data *_data : *_data.erl  
        maker.[bat/sh] protocol *  : *_protocol.erl  
        maker.[bat/sh] log *_log   : log.erl/log_sql.erl
        maker.[bat/sh] router      : user_router.erl
        maker.[bat/sh] lsc         : user_loader.erl/user_saver.erl/user/cleaner.erl


##  **代码文件要求**
    编码使用utf8
    换行符使用unix like 的LF(\n)
    使用四个空格进行缩进与对齐
    变量与函数命名不允许使用中文拼音或者拼音首字母
    单词拼写检测和单词缩写以Intellij Idea Typo为准，词库参考https://github.com/LibreOffice/dictionaries/blob/master/en/en_US.dic


##  **目标**
    程序员以偷懒为天职
    能不手写的代码就不手写

