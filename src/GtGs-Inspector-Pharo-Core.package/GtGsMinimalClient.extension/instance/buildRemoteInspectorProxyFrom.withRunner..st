*GtGs-Inspector-Pharo-Core
buildRemoteInspectorProxyFrom: aString withRunner: anOopType
	| serializedProxy materializedProxy |
	serializedProxy := self 
		send: #evaluateStringAndBuildProxyFor:
		to: anOopType 
		withArgs: { aString }.
	serializedProxy ifNil: [ ^ nil ].
	materializedProxy := self objectSerializer fromString: serializedProxy.
	materializedProxy gemstoneClient: self.
	^ self proxyFinalizer registerForGarbageCollectionInspectorProxy: materializedProxy
