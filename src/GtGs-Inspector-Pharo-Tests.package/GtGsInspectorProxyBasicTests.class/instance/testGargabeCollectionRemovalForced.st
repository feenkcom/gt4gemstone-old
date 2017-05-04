tests- gc
testGargabeCollectionRemovalForced
	| inspectorProxy |
		
	inspectorProxy := self client buildRemoteInspectorProxyFrom: self newBasicTestObject.
	self assertInInspectorProxyGCRegistry: inspectorProxy selfOop.
	
	self client 
			send: #removeFromSessionStorage
			to: inspectorProxy selfOopType.
	
	self assert: (self client finalizationRegistry keys includes: inspectorProxy).	
	self assertNotInInspectorProxyGCRegistry: inspectorProxy selfOop. 