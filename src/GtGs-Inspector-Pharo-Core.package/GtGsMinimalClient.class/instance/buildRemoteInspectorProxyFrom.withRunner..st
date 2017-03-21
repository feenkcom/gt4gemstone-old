actions - proxy
buildRemoteInspectorProxyFrom: aString withRunner: anOopType
	| serializedProxy materializedProxy |
	serializedProxy := self 
		send: #performStringAndBuildProxyFor:
		to: anOopType 
		withArgs: { aString }.
	serializedProxy ifNil: [ ^ nil ].
	materializedProxy := self objectSerializer fromString: serializedProxy.
	materializedProxy gemstoneClient: self.
	^ materializedProxy
