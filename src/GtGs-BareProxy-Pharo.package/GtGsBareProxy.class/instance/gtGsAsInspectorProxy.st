converting - proxy
gtGsAsInspectorProxy
	"I convert the bare proxy to an inspector proxy. An inspector proxy can 
	provide access to dedicated views associated with the remote object."
	
	^ self gemstoneClient 
		buildRemoteInspectorProxyFrom: self gtGsBareAsBlockStringArgument