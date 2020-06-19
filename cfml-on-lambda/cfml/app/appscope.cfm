<cfheader name="Access-Control-Allow-Origin" value="*" />
<cfdump var="#getCounter()#" label="Counter" />
<cfif structKeyExists(url, 'filter')>
    <cfset arrayAppend(application.resultsArray,url.filter) />
</cfif>
<cfdump var="#application.resultsArray#" />