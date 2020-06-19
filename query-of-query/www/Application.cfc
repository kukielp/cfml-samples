component {
    this.name = "cfml-sample-QoQ";

    this.datasources[this.name] = {
        type: 'PostgreSQL'
        , host: '192.168.1.220'
        , database: 'posts'
        , username: 'root'
        , password: ''
        , port: 26258
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