<cfcontent type="text/html; charset=utf-8">
<cfprocessingdirective pageEncoding="utf-8">

<!--- Demonstrate Application variables --->
<cfif structKeyExists(url, 'filter')>
    <cfset arrayAppend(application.resultsArray,url.filter) />
</cfif>

<cfdump var="#application.resultsArray#" />

<!--- Demonstrate a query --->
<cfquery name="q" datasource="pgjdbc">
    select      customer_id, contact_title
    from        customers
    <cfif structKeyExists(url, 'filter')>
        where       contact_title like <cfqueryparam value="%#filter#%" cfsqltype="CF_SQL_VARCHAR" />
    </cfif>
</cfquery>
<cfdump var="#q#" />

<!--- Demonstrate serialising CFML to json --->
<cfset newStruct = {} />
<cfset i = 1 />
<cfloop query="#q#">
    <cfset newStruct[i] = q.contact_title />
    <cfset i++ />
</cfloop>
<cfdump var="#newStruct#" />
<cfoutput>#SerializeJSON(newStruct)#</cfoutput>

<!--- Demonstrate object creation --->
<cfset p = new Person() />
<cfdump var="#p#" />