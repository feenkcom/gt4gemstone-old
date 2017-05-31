*GtGs-Inspector-Pharo-Core
buildRemoteInspectorProxyFromSelector: aSelector withArguments: anArray withRunner: anOopType
	| serializedProxy materializedProxy |
	serializedProxy := self 
		send: aSelector
		to: anOopType 
		withArgs: anArray.
	serializedProxy ifNil: [ ^ nil ].
	materializedProxy := self objectSerializer fromString: serializedProxy.
	materializedProxy gemstoneClient: self.
	^ self proxyFinalizer registerForGarbageCollectionRemoteTool: materializedProxy
