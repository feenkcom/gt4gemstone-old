actions - remote
buildRemoteInspectorProxyFrom: aString

	^ self gemstoneClient 
		buildRemoteInspectorProxyFrom: aString 
		inContext: self codeExecutionOopType