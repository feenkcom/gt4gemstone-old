tests- gc
testGargabeCollectionBetweenLoginAndLogOut
	| inspectorProxy |
	
	inspectorProxy := self client buildRemoteInspectorProxyFrom: self newBasicTestObject.
	self assertInInspectorProxyGCRegistry: inspectorProxy selfOop.
	
	self client logout.
	self client login.
	
	self assert: (self client finalizationRegistry keys includes: inspectorProxy).
	
	"Attempting to garbage collect a proxy created within a different session raises error."
	self assertGCIErrorDuring: [
		self client
			send: #removeFromSessionStorage
			to: inspectorProxy selfOopType ].
		
	"Proxies created with the previous session should not cause errors they will be garbage collected.
	They should just be ignored during garbage collection as the session was terminated."
	self shouldnt: [ 
		inspectorProxy := nil.
		Smalltalk garbageCollect.
		Smalltalk garbageCollect.
		Smalltalk garbageCollect. ] raise: Error.
	
	self deny: (self client finalizationRegistry keys includes: inspectorProxy).
	