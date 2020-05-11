Running on k8's
<cfscript>
    writeDump(application);
</cfscript>
<cfquery name="dataset" result="meta" >
    select      name, city, zipcode
    from        address_book
</cfquery>
<cfdump var=#dataset#/>
</br/>
<cfquery name="QoQ" dbtype="query" result="metaQoQ" >
    select      name, city, zipcode
    from        dataset
    where       name = 'Ron'
</cfquery>
<cfdump var=#QoQ#/>
</br/>
<cfdump var="#application#" />

<cfdump var=#meta#/>
<cfdump var=#metaQoQ#/>

<cfscript>
    machineName = createObject("java", "java.net.InetAddress").localhost.getCanonicalHostName();
    hostaddress = createObject("java", "java.net.InetAddress").localhost.getHostAddress();
</cfscript>
<cfdump var="#machineName#"><br />
<cfdump var="#hostaddress#"><br />