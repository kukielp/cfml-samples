
<!--- Show all Envrioment variables 
<cfdump var="#server.system.environment#" />
--->

<!--- Show the request counter for this "instance" of the applicaiton. --->
Counter: <cfdump var="#getCounter()#" />
<cfdump var="#getLambdaContext()#" label="getLambdaContext()" />