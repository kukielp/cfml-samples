component {

	this.name="cfml-lambda-cfimage";
	this.applicationTimeout = CreateTimeSpan(10, 0, 0, 0); //10 days
	this.sessionManagement=false;
	this.clientManagement=false;
	this.setClientCookies=false;
	
	public function onRequest(string path) {
		include listLast(arguments.path,'/');
	}

	function onApplicationStart() {
		return true;
	}

	public function getLambdaContext() {
		//see https://docs.aws.amazon.com/lambda/latest/dg/java-context-object.html
		return getPageContext().getRequest().getAttribute("lambdaContext");
	}

	public void function logger(string msg) {
		getLambdaContext().getLogger().log(arguments.msg);
	}

	public string function getRequestID() {
		if (isNull(getLambdaContext())) {
			//not running in lambda
			if (!request.keyExists("_request_id")) {
				request._request_id = createUUID();
			}
			return request._request_id;
		} else {
			return getLambdaContext().getAwsRequestId();
		}
	}

	function onMissingTemplate(){
		include '404.cfm';
	}

	function onError( any Exception, string EventName ) {
		writeOutput("Some error has occured");
		abort;
	}
}