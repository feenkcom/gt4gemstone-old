tests- gc
testGargabeCollectionLocalRegistration
	| inspectorProxy |
	inspectorProxy := self client buildRemoteInspectorProxyFrom: self newBasicTestObject.
	
	self assert: (self client finalizationRegistry keys includes: inspectorProxy)