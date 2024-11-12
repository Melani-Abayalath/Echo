import ballerina/http;

type CallbackEndpoint record {
    string name;
    string url;
};

// Define the configurable array of CallbackEndpoint
configurable CallbackEndpoint[] externalCallbacks = ?;

// Service to handle HTTP requests
service / on new http:Listener(9090) {

    // Endpoint to fetch callback names
    resource function get callbackNames() returns CallbackEndpoint[] & readonly {
    
      return externalCallbacks;
    }
}
