tests- gc
testGargabeCollectionRemoteRegistration
	| inspectorProxy |
	inspectorProxy := self client buildRemoteInspectorProxyFrom: self newBasicTestObject.
	
	self assertInInspectorProxyGCRegistry: inspectorProxy selfOop.