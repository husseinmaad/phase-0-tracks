## What are some common HTTP status codes?
**200 OK**

> The request has succeeded. The information returned with the response is dependent on the method used in the request.
----
**400 Bad Request**

> The 400 status code, or Bad Request error, means the HTTP request that was sent to the server has invalid syntax.
----
**401 Unauthorized**

> The 401 status code, or an Unauthorized error, means that the user trying to access the resource has not been authenticated or has not been authenticated correctly. 
----
**403 Forbidden**

> The 403 status code, or a Forbidden error, means that the user made a valid request but the server is refusing to serve the request, due to a lack of permission to access the requested resource.

----
**404 Not Found**

> The 404 status code, or a Not Found error, means that the user is able to communicate
with the server but it is unable to locate the requested file or resource.

----
**500 Internal Server Error**

> The 500 status code, or Internal Server Error, means that server cannot process the request for an unknown reason.

----
**502 Bad Gateway**

> The 502 status code, or Bad Gateway error, means that the server is a gateway or proxy server, and it is not receiving a valid response from the back-end servers that should actually fulfill the request.
----

**503 Service Unavailable**

> The 503 status code, or Service Unavailable error, means that the server is overloaded or under maintenance.
----

**504 Gateway Timeout**

> The 504 status code, or Gateway Timeout error, means that the server is a gateway or proxy server, and it is not receiving a response from the back-end servers within the allowed time period.

see [For more details check the source website](https://www.digitalocean.com/community/tutorials/how-to-troubleshoot-common-http-error-codes)

## What is the difference between a GET request and a POST request? When might each be used?

**GET**

> Requests data from a specified resource. Note that GET should not be used for 
operations that cause side-effects, such as using it for taking actions in web 
applications.

* can be cached
* remain in the browser history
* can bookmarked
* have length restrictions
* used only to retrieve data

*GET Method*

    code /test/demo_form.asp?name1=value1&name2=value2


**POST**

> Submits data to be processed to a specified resource (e.g., from an HTML form). 
The data is included in the body of the request. This may result in the creation of a new 
resource or the updates of existing resources or both.

* can not be cached 
* don't remain in the browser history
* no length restriction
* can not be bookmarked 

*POST Method*

    code POST /test/demo_form.asp HTTP/1.1
          Host: w3schools.com
          name1=value1&name2=value2

[More Details about GET & POST](http://www.w3schools.com/tags/ref_httpmethods.asp)

## What is a cookie (the technical kind, not the delicious kind)? How does it relate to 
HTTP requests?

*Cookies*

> Websites save information about you in cookies (files) on your computer. The next time 
you visit that site, the code will read that file to “remember” you. We rely on cookies 
all the time. For example, when you go to a Website and the page remembers your user name 
and password – that’s made possible by a cookie.

> There are also cookies that remember more detailed information about you. Perhaps your 
interests, your Web browsing patterns, etc. This means that a site can provide you more 
targeted content – often in the form of ads. 

*There are types of cookies:*

* called third-party cookies – that track you from sites you’re not even visiting at the
 time to gather information about you, which is sometimes sold.

* Some cookies track you until you close your browser. 

* Other cookies track you until you delete them. 

> In general, cookies can’t harm your computer, but sometimes people are concerned about 
cookies and their privacy.

