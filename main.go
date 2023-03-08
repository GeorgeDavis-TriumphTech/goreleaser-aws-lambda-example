package main

import (
	"log"

	// Importing our AWS Libraries
	"github.com/aws/aws-lambda-go/events"
	"github.com/aws/aws-lambda-go/lambda"
)

func main() {
	// lambda.Start is how Lambda handles passing various events into your code
	lambda.Start(handler)
}

// 'handler' will change the inputs & outputs depending on the type of event you trying to handle
func handler(request events.APIGatewayProxyRequest) (events.APIGatewayProxyResponse, error) {
	// Logging a simple message to the console, which will display in the AWS Console
	log.Println("Hello World!")

	// Creating our response with a status code of 200
	response := events.APIGatewayProxyResponse{
		StatusCode: 200,
	}

	// Finally, return the response with a nil error object to satisfy the outputs
	return response, nil
}
