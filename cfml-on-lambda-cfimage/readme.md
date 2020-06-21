# FuseLess with cfimage

From here you are ready to deploy to AWS lambda a CFML serice that can resize an image.

Clone this repo and run:

```bash
./init.sh
```

This will download fuseless.jar and lucee lite.

Then run:

```bash
./bd.sh
```

This will build the app ( you'll need java and gradle and AWS Sam installed ) and begin a guided depolyment with SAM.

```
CloudFormation outputs from deployed stack
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Outputs
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Key                 CFMLCFImageFunctionIamRole
Description         Implicit IAM Role created for CFML CFImage function
Value               arn:aws:iam::{accountId}:role/cfml-lambda-sample-CFMLCFImageFunctionRole-Q0JLGZ2RPHXR

Key                 CFMLCFImageApi
Description         API Gateway endpoint URL for Prod stage for CFML Select function
Value               https://ajzmevckf1.execute-api.ap-southeast-2.amazonaws.com/Prod/

Key                 CFMLCFImageFunction
Description         CFML Lambda Function ARN
Value               arn:aws:lambda:ap-southeast-2:{accountId}:function:cfml-lambda-sample-CFMLCFImageFunction-{someID}
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
```

The CFMLCFImageApi Value is what your after in this example its: 

https://ajzmevckf1.execute-api.ap-southeast-2.amazonaws.com/Prod/image.cfm?img=https://cdn.kukiel.dev/Silicon_valley_title.png

Change the image key on the URL to resize a differnt image.