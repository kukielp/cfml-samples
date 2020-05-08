component {
    this.name = "cfml-sample-QoQ";

    this.datasources["pg-sample"] = {
        type: 'PostgreSQL'
        , host: server.system.environment.DNS_DATABASE
        , database: server.system.environment.NAME_DATABASE
        , username: server.system.environment.UN_DATABASE
        , password: server.system.environment.PW_DATABASE
        , port: 5432
    };

    this.defaultdatasource = "pg-samples"

    boolean function onRequestStart(string targetPage) {
       return true;
   }
}