1. What are some common HTTP status codes?
    - Common HTTP status codes are: 
        200 OK
        300 Multiple Choices
        301 Moved Permanently
        302 Found
        304 Not Modified
        307 Temporary Redirect
        400 Bad Request
        401 Unauthorized
        403 Forbidden
        404 Not Found
        410 Gone
        500 Internal Server Error
        501 Not Implemented
        503 Service Unavailable
        550 Permission Denied

2. What is the difference between a GET request and a POST request? When might each be used?
    - GET requests retrieve data from a specified source, while POST submits data that is to be processed to a specified resource. GET methods can be cached, remain in the browser history, and can be bookmarked. They also have length restrictions and should never be used when dealing with sensitive data. POST requests are never cached, do not remain in the browser history, cannot be bookmarked and have no restrictions on data length. 

3. What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
    - A cookie is a small piece of data that is sent from a website and stored on the user's computer by the web browser while that user is browsing. It is used to tell if two requests came from the same browser -- like keeping a user logged in. It remembers stateful information for the stateless HTTP protocol. Cookies are useful for session management, personalization and tracking. 


