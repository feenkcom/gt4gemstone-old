converting - proxy
gtGsAsInspectorProxy
	"I convert the bare proxy to an inspector proxy. An inspector proxy can 
	provide access to dedicated views associated with the remote object.
	I use the API provided by the client so that the new inspector proxy
	is registered for garbage collection independently of myself."
	
	^ self gemstoneClient 
		buildRemoteInspectorProxyFrom: self gtGsBareAsBlockStringArgument