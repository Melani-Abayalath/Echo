import ballerina/http;
import ballerina/io;

type config record {
    string name;
    string url;
};

// Define the configurable array of CallbackEndpoint
configurable config[] data = ?;

// Service to handle HTTP requests
service / on new http:Listener(9090) {

    // Endpoint to fetch callback names
    resource function get callbackNames() returns string {
    io:println(data.toString());
    return "";
      
    }
    }
