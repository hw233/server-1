-module(config).
-compile(nowarn_export_all).
-compile(export_all).

net_uds_path() ->
    case application:get_env(main, net) of
        {ok, Net} ->
            case lists:keyfind(uds_path, 1, Net) of
                {uds_path, UdsPath} ->
                    UdsPath;
                _ ->
                    []
            end;
        _ ->
            []
    end.

net_socket_type() ->
    case application:get_env(main, net) of
        {ok, Net} ->
            case lists:keyfind(socket_type, 1, Net) of
                {socket_type, SocketType} ->
                    SocketType;
                _ ->
                    gen_tcp
            end;
        _ ->
            gen_tcp
    end.

net_gen_tcp_start_port() ->
    case application:get_env(main, net) of
        {ok, Net} ->
            case lists:keyfind(gen_tcp_start_port, 1, Net) of
                {gen_tcp_start_port, GenTcpStartPort} ->
                    GenTcpStartPort;
                _ ->
                    10000
            end;
        _ ->
            10000
    end.

net_gen_tcp_acceptor_number() ->
    case application:get_env(main, net) of
        {ok, Net} ->
            case lists:keyfind(gen_tcp_acceptor_number, 1, Net) of
                {gen_tcp_acceptor_number, GenTcpAcceptorNumber} ->
                    GenTcpAcceptorNumber;
                _ ->
                    1
            end;
        _ ->
            1
    end.

net_ssl_start_port() ->
    case application:get_env(main, net) of
        {ok, Net} ->
            case lists:keyfind(ssl_start_port, 1, Net) of
                {ssl_start_port, SslStartPort} ->
                    SslStartPort;
                _ ->
                    20000
            end;
        _ ->
            20000
    end.

net_ssl_acceptor_number() ->
    case application:get_env(main, net) of
        {ok, Net} ->
            case lists:keyfind(ssl_acceptor_number, 1, Net) of
                {ssl_acceptor_number, SslAcceptorNumber} ->
                    SslAcceptorNumber;
                _ ->
                    1
            end;
        _ ->
            1
    end.

net_ssl_cert_file() ->
    case application:get_env(main, net) of
        {ok, Net} ->
            case lists:keyfind(ssl_cert_file, 1, Net) of
                {ssl_cert_file, SslCertFile} ->
                    SslCertFile;
                _ ->
                    "config/cert/fake.me.crt"
            end;
        _ ->
            "config/cert/fake.me.crt"
    end.

net_ssl_key_file() ->
    case application:get_env(main, net) of
        {ok, Net} ->
            case lists:keyfind(ssl_key_file, 1, Net) of
                {ssl_key_file, SslKeyFile} ->
                    SslKeyFile;
                _ ->
                    "config/cert/fake.me.key"
            end;
        _ ->
            "config/cert/fake.me.key"
    end.

mysql_connector_pool_size() ->
    case application:get_env(main, mysql_connector_pool) of
        {ok, MysqlConnectorPool} ->
            case lists:keyfind(size, 1, MysqlConnectorPool) of
                {size, Size} ->
                    Size;
                _ ->
                    1
            end;
        _ ->
            1
    end.

mysql_connector_host() ->
    case application:get_env(main, mysql_connector) of
        {ok, MysqlConnector} ->
            case lists:keyfind(host, 1, MysqlConnector) of
                {host, Host} ->
                    Host;
                _ ->
                    "127.0.0.1"
            end;
        _ ->
            "127.0.0.1"
    end.

mysql_connector_port() ->
    case application:get_env(main, mysql_connector) of
        {ok, MysqlConnector} ->
            case lists:keyfind(port, 1, MysqlConnector) of
                {port, Port} ->
                    Port;
                _ ->
                    3306
            end;
        _ ->
            3306
    end.

mysql_connector_user() ->
    case application:get_env(main, mysql_connector) of
        {ok, MysqlConnector} ->
            case lists:keyfind(user, 1, MysqlConnector) of
                {user, User} ->
                    User;
                _ ->
                    "root"
            end;
        _ ->
            "root"
    end.

mysql_connector_password() ->
    case application:get_env(main, mysql_connector) of
        {ok, MysqlConnector} ->
            case lists:keyfind(password, 1, MysqlConnector) of
                {password, Password} ->
                    Password;
                _ ->
                    "root"
            end;
        _ ->
            "root"
    end.

mysql_connector_database() ->
    case application:get_env(main, mysql_connector) of
        {ok, MysqlConnector} ->
            case lists:keyfind(database, 1, MysqlConnector) of
                {database, Database} ->
                    Database;
                _ ->
                    "local"
            end;
        _ ->
            "local"
    end.

mysql_connector_encoding() ->
    case application:get_env(main, mysql_connector) of
        {ok, MysqlConnector} ->
            case lists:keyfind(encoding, 1, MysqlConnector) of
                {encoding, Encoding} ->
                    Encoding;
                _ ->
                    "utf8mb4"
            end;
        _ ->
            "utf8mb4"
    end.

cookie() ->
    case application:get_env(main, cookie) of
        {ok, Cookie} ->
            Cookie;
        _ ->
            erlang
    end.

node_type() ->
    case application:get_env(main, node_type) of
        {ok, NodeType} ->
            NodeType;
        _ ->
            local
    end.

server_id() ->
    case application:get_env(main, server_id) of
        {ok, ServerId} ->
            ServerId;
        _ ->
            1001
    end.

open_time() ->
    case application:get_env(main, open_time) of
        {ok, OpenTime} ->
            OpenTime;
        _ ->
            1577808000
    end.

center_node() ->
    case application:get_env(main, center_node) of
        {ok, CenterNode} ->
            CenterNode;
        _ ->
            center
    end.

center_ip() ->
    case application:get_env(main, center_ip) of
        {ok, CenterIp} ->
            CenterIp;
        _ ->
            []
    end.

world_node() ->
    case application:get_env(main, world_node) of
        {ok, WorldNode} ->
            WorldNode;
        _ ->
            world
    end.

world_ip() ->
    case application:get_env(main, world_ip) of
        {ok, WorldIp} ->
            WorldIp;
        _ ->
            []
    end.

path_app() ->
    case application:get_env(main, path) of
        {ok, Path} ->
            case lists:keyfind(app, 1, Path) of
                {app, App} ->
                    App;
                _ ->
                    "config/app/"
            end;
        _ ->
            "config/app/"
    end.

path_beam() ->
    case application:get_env(main, path) of
        {ok, Path} ->
            case lists:keyfind(beam, 1, Path) of
                {beam, Beam} ->
                    Beam;
                _ ->
                    "beam/"
            end;
        _ ->
            "beam/"
    end.

path_config() ->
    case application:get_env(main, path) of
        {ok, Path} ->
            case lists:keyfind(config, 1, Path) of
                {config, Config} ->
                    Config;
                _ ->
                    "config/"
            end;
        _ ->
            "config/"
    end.

path_include() ->
    case application:get_env(main, path) of
        {ok, Path} ->
            case lists:keyfind(include, 1, Path) of
                {include, Include} ->
                    Include;
                _ ->
                    "include/"
            end;
        _ ->
            "include/"
    end.

path_script() ->
    case application:get_env(main, path) of
        {ok, Path} ->
            case lists:keyfind(script, 1, Path) of
                {script, Script} ->
                    Script;
                _ ->
                    "script/"
            end;
        _ ->
            "script/"
    end.

path_src() ->
    case application:get_env(main, path) of
        {ok, Path} ->
            case lists:keyfind(src, 1, Path) of
                {src, Src} ->
                    Src;
                _ ->
                    "src/"
            end;
        _ ->
            "src/"
    end.

