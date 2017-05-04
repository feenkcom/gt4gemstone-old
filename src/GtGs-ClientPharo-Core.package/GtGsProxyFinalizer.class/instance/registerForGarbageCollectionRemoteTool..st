gc api
registerForGarbageCollectionRemoteTool: aRemoteTool
	"I register the given object for garbage collection. When the object is garbage
	collected on the Pharo side I send a request to release the object on the remote
	side. I should only be used to register remote tools. I do not use any algorithm
	for garbage collection. I assume that only one reference to the object will be 
	passed to the Pharo side. This is true for tools: for example, every time an object 
	is inspected on the remote side a new inspector proxy is created and passed to
	the Pharo side."
	| remoteOop |
	
	remoteOop := aRemoteTool selfOop.
		
	self class finalizationRegistry 
		add: aRemoteTool 
		executor:
			"Pass the session to the finalizer and not the client, as the
			 client can be initialized with a new session."
			(ObjectFinalizer new
				receiver: self
				selector: #releaseRemoteToolWithOopAndSession:
				argument: { remoteOop . aRemoteTool gemstoneClient session }).
		
	^ aRemoteTool