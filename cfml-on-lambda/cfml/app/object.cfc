<cfcomponent>
    <cffunction name="test" access="remote" returnFormat="JSON">
        <cfquery name="q" datasource="pgjdbc">
            select      customer_id, contact_title
            from        customers
        </cfquery>
        <cfcontent type="application/json; charset=utf-8">
        <cfprocessingdirective pageEncoding="utf-8">
        <cfreturn q>
    </cffunction>
</cfcomponent>
