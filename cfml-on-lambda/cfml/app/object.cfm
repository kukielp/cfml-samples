<cfheader name="Access-Control-Allow-Origin" value="*" />
<cfcontent type="text/html; charset=utf-8">
<cfprocessingdirective pageEncoding="utf-8">

<cfset p = new Person() />
<cfdump var="#p#" />