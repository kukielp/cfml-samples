<cfcontent type="text/html; charset=utf-8">
<cfprocessingdirective pageEncoding="utf-8">
<cfoutput>
 <!DOCTYPE html>
<html>
<head>
    <style>
        .header {
            background-color: ##428BCA;
            color: white;
            text-align: center;
            padding: 5px;
        }
        
        .nav {
            background-color: ##eeeeee;
            height: 500px;
            width: 250px;
            float: left;
            padding: 5px;
        }
        
        .section {
            width: 350px;
            float: left;
            padding: 10px;
        }
        
        ##output-error{
            color: red;
        }
        
        input {
            max-width: 50px;
        }
        
        .in {
            min-width: 100px;
            padding-bottom: 15px;
        }

    </style>
    <script>
        //const endppoint = '{input-your-url}';
        const endppoint = 'https://8wgei5rj1f.execute-api.ap-southeast-2.amazonaws.com/Prod/';
        clear = function(){
            document.getElementById('output').innerHTML = '';
            document.getElementById('output-raw').innerHTML = '';
            document.getElementById('result').innerHTML = '';
        }
        
        getFilter = function(){
            const filterText = document.getElementById('filterText').value;
            const data = "appscope.cfm?filter="+filterText;

            let r = new XMLHttpRequest();
            r.open("GET", `${endppoint}${data}`, true);
            r.onload = function () {
                document.getElementById('output-appication-vars').innerHTML = r.responseText;
            };
            r.send();
        }

        getQuery = function(){
            const filterText = document.getElementById('queryfilterText').value;
            const data = "query.cfm?filter="+filterText;

            let r = new XMLHttpRequest();
            r.open("GET", `${endppoint}${data}`, true);
            r.onload = function () {
                document.getElementById('output-query').innerHTML = r.responseText;
            };
            r.send(); 
        }

        getObject = function(){
            const data = "object.cfm";

            let r = new XMLHttpRequest();
            r.open("GET", `${endppoint}${data}`, true);
            r.onload = function () {
                document.getElementById('output-object').innerHTML = r.responseText;
            };
            r.send(); 
        }

    </script>
</head>

<body>

    <div class="header">
        <h1>ColdFusion/CFML ( <a href="https://lucee.org/" target="_blank">Lucee</a> ) in AWS Lambda with API gateway</h1>
    </div>

    <div class="nav">
        <h4>Inputs</h4>
        <div class="in">
            <span class="out">
                Application Scope Variables (can) stay hot input a value to add to an array: 
            </span>
            <span class="out">
                <input id="filterText" value="A value">
                <button onClick="getFilter()">Test</button>
            </span>
        </div>

        <div class="in">
            <span class="out">
                You Can run a query 
            </span>
            <span class="out">
                <input id="queryfilterText" value="Sales">
                <button onClick="getQuery()">Test</button>
            </span>
        </div>

        <div class="in">
            <span class="out">
                Objects work aswell
            </span>
            <span class="out">
                <button onClick="getObject()">Test</button>
            </span>
        </div>
        
        <hr/>
        <p>This is a quick demo that invokes a few CFML pages behind API Gateway.  This page is also hosted in the same lmabda function.</p>
        
    </div>

    <div class="section">
        <h2>Application Vairables</h2>
        <p id="output-appication-vars"></p>
        <h2>Objects</h2>
        <pre id="output-object"></pre>
        <h2>Query!</h2>
        <p id="output-query"></p>
        
    </div>
</body>

</html>
</cfoutput>