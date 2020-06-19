<cfheader name="Access-Control-Allow-Origin" value="*" />
<cfcontent type="text/html; charset=utf-8">
<cfprocessingdirective pageEncoding="utf-8">

<cfif structKeyExists(url, 'filter')>
    <cfset arrayAppend(application.resultsArray,url.filter) />
</cfif>

<cfquery name="q" datasource="pgjdbc">
    select      customer_id, contact_title
    from        customers
    <cfif structKeyExists(url, 'filter')>
        where       contact_title like <cfqueryparam value="%#filter#%" cfsqltype="CF_SQL_VARCHAR" />
    </cfif>
</cfquery>
<cfdump var="#q#" />