import ballerina/io;

// Define the CallbackEndpoint record with default values for msgType and certPath
type CallbackEndpoint record {
    string name;
    string url;
    string msgType = "application/json";
    string certPath = "";
};

// Define the configurable array of CallbackEndpoint
configurable CallbackEndpoint[] externalCallbacks = ?;

// Main function to process the external callbacks
public function main() returns error? {
  
    // Loop through each CallbackEndpoint and print its properties
    foreach CallbackEndpoint callback in externalCallbacks {
        io:println("Callback Name: " + callback.name);
        io:println("Callback URL: " + callback.url);
        io:println("Message Type: " + callback.msgType);
        io:println("Certificate Path: " + callback.certPath);
        io:println("--------------");
    }
}
