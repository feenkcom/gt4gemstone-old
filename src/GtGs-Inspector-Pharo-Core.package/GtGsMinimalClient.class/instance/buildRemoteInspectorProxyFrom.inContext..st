actions api
buildRemoteInspectorProxyFrom: aString inContext: anOopType
	| serializedProxy materializedProxy |
	serializedProxy := self session 
		send: #performStringAndBuildProxyFor: 
		to: anOopType 
		withArgs: { aString }.
		
	materializedProxy := self objectSerializer fromString: serializedProxy.
	materializedProxy gemstoneClient: self.
	^ materializedProxy
