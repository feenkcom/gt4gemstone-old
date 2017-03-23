I am a proxy designed to work with a remote stone where the project Gt4Gemstone is not installed.  Instances of me should only be created using the API provided by a gemstone client.

I inherit from ProtoObject and rely on #doesNotUnderstand:  to propagate messages to the remote object. I provide the minimum ammount of messages to ensure that I can be inspected and debugged.  I use a GtGsBareClient to communicate, however,  a GtGsBareTopezServer is not required in the remote stone, as I only use messages provide by GCI to communicate with the remote stone. 

I do not handle remote garbage collection. It is the responsability of the gemstone client that created me to ensure that GCI removes the refrence to the remote object when I am garbaged collected in the local Pharo image, if no other proxies point to the same object.

Public API and Key Messages

- performRemotely:withArguments:    main entry point for requesting the execution of a remote selector
- isProxyObjectActive                                  verifies if an active gemstone client is set; I only work when this returns true

Examples:

|proxy|
proxy := gtClient buildRemoteBareProxyFrom: 'Object'.
self assert: proxy class name = 'GtGsBareProxy'.
self assert: proxy remoteClass name = 'Object class'
 
