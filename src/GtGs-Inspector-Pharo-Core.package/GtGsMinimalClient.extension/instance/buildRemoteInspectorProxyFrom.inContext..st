*GtGs-Inspector-Pharo-Core
buildRemoteInspectorProxyFrom: aString inContext: aContextArgument 
	| serializedProxy materializedProxy |
	serializedProxy := self 
		send: #evaluateStringAndBuildProxyFor:inContext: 
		to: self todeServerOopType 
		withArgs: { aString . aContextArgument }.
	serializedProxy ifNil: [ ^ nil ].
	materializedProxy := self objectSerializer fromString: serializedProxy.
	materializedProxy gemstoneClient: self.
	^ self proxyFinalizer registerForGarbageCollectionInspectorProxy: materializedProxy
