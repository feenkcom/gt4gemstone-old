transforming
gtGsAsInspectorProxy
	^ self gemstoneClient 
		buildRemoteInspectorProxyFrom: 'Object _objectForOop: ', self selfOop asString 