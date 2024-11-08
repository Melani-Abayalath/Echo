import ballerina/http;

public configurable string end = ?;

service / on new http:Listener(9090) {
    resource function get greeting(string name) returns string|error {
  
        return "Hello090";;
    }
}
