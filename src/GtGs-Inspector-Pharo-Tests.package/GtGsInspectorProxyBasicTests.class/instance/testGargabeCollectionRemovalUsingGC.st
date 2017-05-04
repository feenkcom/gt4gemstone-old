tests- gc
testGargabeCollectionRemovalUsingGC
	| inspectorProxy inspectorProxyOop |
	
	inspectorProxy := self client buildRemoteInspectorProxyFrom: self newBasicTestObject.
	self assertInInspectorProxyGCRegistry: inspectorProxy selfOop.
	
	inspectorProxyOop := inspectorProxy selfOop.
	inspectorProxy := nil.
	Smalltalk garbageCollect.
	Smalltalk garbageCollect.
	Smalltalk garbageCollect.
	
	self assert: (self client finalizationRegistry keys 
		anySatisfy: [ :each | each == inspectorProxyOop ]) not.	
	self assertNotInInspectorProxyGCRegistry: inspectorProxyOop.