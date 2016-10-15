as yet unclassified
buildRemoteInspectorProxyFrom: aString
	| serializedProxy materializedProxy |
	serializedProxy := self session 
		send: #performStringAndBuildProxyFor: 
		to: self todeServerOopType 
		withArgs: { aString }.
		
	materializedProxy := self objectSerializer fromString: serializedProxy.
	materializedProxy gemstoneClient: self.
	^ materializedProxy
