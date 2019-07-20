*   CF extension optimized for serverless.
*   SAM template is a CF template with 'serverless' transform applied to it.
*   5 different resources are supported.
    *   Function - a lambda function
    *   Api - an API gateway
    *   SimpleTable - DynamoDB
    *   Layer - Lambda layer
    *   Application
*   SAM automatically creates the event sources if it dorsn't exist.
*   API GW Stage Variables \[check\]
*   Lambda alias traffic shifting \[check\]
*   SAM CLI 
    *   Tool for local dev, debugging, testing and monitoring of serverless apps
    *   Supports API GW "proxy-stylr" and Lambda service API testing.
    *   Response obj and function logs logs are locally available.
    *   Uses open source docker-lambda image to mimc Lamabda's execution env such as timeout, memory limits, runtimes
    *   Helps build in native dependencies.
*   SAR - Serverless Application Repository \[check\]