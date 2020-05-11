component {
    this.name = "cfml-sample-QoQ";

    this.datasources[this.name] = {
        type: 'PostgreSQL'
        , host: server.system.environment.DNS_DATABASE
        , database: server.system.environment.NAME_DATABASE
        , username: server.system.environment.UN_DATABASE
        , password: server.system.environment.PW_DATABASE
        , port: 5432
    };

    this.defaultdatasource = this.name;

    boolean function onRequestStart(string targetPage) {
        writeDump(this);
       return true;
   }

    void function onApplicationStart(struct application) {
      include "setup.cfm";
    }
}