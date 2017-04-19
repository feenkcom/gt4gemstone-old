assertions
assertNotInInspectorProxyGCRegistry: anInspectorProxyOop
	| includesKey |
	includesKey := self client onServerDo: [ 
		(SessionTemps current
			at: #'GtGs_Inspector_ProxyCache') includesKey: anInspectorProxyOop ].
		
	self assert: includesKey not description: 'After removal, a proxy should not be present in the registry.'.
