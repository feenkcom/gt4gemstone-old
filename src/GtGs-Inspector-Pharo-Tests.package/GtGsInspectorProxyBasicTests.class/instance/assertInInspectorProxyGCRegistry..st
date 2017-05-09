assertions
assertInInspectorProxyGCRegistry: anInspectorProxyOop
	| includesKey includesCorrectProxy |
	
	includesKey := self client onServerDo: [ 
		(SessionTemps current
			at: #'GtGs_GlamourStorage') includesKey: anInspectorProxyOop ].
		
	self assert: includesKey description: 'After creating a proxy it should be present in the registry.'.
	
	includesCorrectProxy := self client onServerDo: [ 
		((SessionTemps current
			at: #'GtGs_GlamourStorage') at: anInspectorProxyOop) selfOop == anInspectorProxyOop ].
		
	self assert: includesCorrectProxy description: 'A key should point to a proxy having the same oop.'