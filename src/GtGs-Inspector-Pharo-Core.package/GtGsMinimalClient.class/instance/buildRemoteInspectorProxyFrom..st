as yet unclassified
buildRemoteInspectorProxyFrom: aString
	| serializedProxy materializedProxy |
	serializedProxy := self session executeString: '(', aString, ')', ' gtGsInspectorProxy'.
		
	materializedProxy := self objectSerializer fromString: serializedProxy.
	materializedProxy gemstoneClient: self.
	^ materializedProxy
