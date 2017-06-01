*GtGs-Inspector-Pharo-Core
buildRemoteInspectorProxyFromSelector: aSelector withArguments: anArray withRunner: anOopType
	| serializedProxy |
	serializedProxy := self 
		send: aSelector
		to: anOopType 
		withArgs: anArray.
	serializedProxy ifNil: [ ^ nil ].
	^ self materializeInspectorProxyFrom: serializedProxy
