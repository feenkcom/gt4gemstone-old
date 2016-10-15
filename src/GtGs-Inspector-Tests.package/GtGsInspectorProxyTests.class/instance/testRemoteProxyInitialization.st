running
testRemoteProxyInitialization
	| inspectorProxy |
	
	inspectorProxy := self client buildRemoteInspectorProxyFrom: '42'.
	
	self assert: inspectorProxy ~= nil. 
	self assert: inspectorProxy gemstoneClient equals: self client. 
	self assert: inspectorProxy topezServer equals: nil. 
	self assert: inspectorProxy targetObject equals: nil. 