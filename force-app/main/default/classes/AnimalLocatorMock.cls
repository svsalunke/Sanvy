@isTest
global class AnimalLocatorMock implements HttpCalloutMock {
    global HTTPResponse respond(HTTPRequest request) {
        HttpResponse response = new HttpResponse();
        response.setHeader('ContentType', 'application/json');
        response.setBody('{"animal":{"id":1,"name":"moose","eats":"palnts","says":"belows"}}');
        response.setStatusCode(200);
        return response;
    }
}