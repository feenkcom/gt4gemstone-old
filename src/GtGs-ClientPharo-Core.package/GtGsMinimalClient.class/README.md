I provide services for making various requests to a GemStone server.  To perform request I initialize and communicate with an instance of a TDTopezServer. 

I provide services related to: 
- executing, inspecting and debugging code;
- creating bare proxies;
- opening various remote tools.
View my API methods for more details.

When dealing with proxies or remote tools I use a GtGsProxyFinalizer to implement remote garbage collection.

Whenever I loggin I register myself with the GtGsSessionsLifecycleHandler that controlls then my lifecycle. I only register if the #loginWith: method is used. 

At log in I create and maintain a new instance of  GsGciSession that provides the communication support with a remote session. When logging out the session is removed. If the user loggs in again then a new session is created. Clients should not use objects obtained after log in that were created with older sessions. To achive this clients can use the session object as a reference, rather than the client.

I inherit from TDMinimalClient and update the way the log in and log out works. I also change the way a debugger is opened when an error occurs.
