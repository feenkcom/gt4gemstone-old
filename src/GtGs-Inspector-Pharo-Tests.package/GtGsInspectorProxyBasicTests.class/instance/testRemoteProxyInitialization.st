tests
testRemoteProxyInitialization
	| inspectorProxy |
	
	inspectorProxy := self client buildRemoteInspectorProxyFrom: self newBasicTestObject.
	
	self assert: inspectorProxy ~= nil. 
	self assert: inspectorProxy gemstoneClient equals: self client. 
	self assert: inspectorProxy topezServer equals: nil. 
	self assert: inspectorProxy targetObject equals: nil. 