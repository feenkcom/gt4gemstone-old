testing - gc
testGargabeCollectionRemoteRemoval
	| inspectorProxy inspectorProxyOop inspectorProxyOopType optainedOop |
	
	inspectorProxy := self client buildRemoteInspectorProxyFrom: 'Object new'.
	
	self assertInInspectorProxyGCRegistry: inspectorProxy selfOop.
	inspectorProxyOop := inspectorProxy selfOop.
	inspectorProxyOopType := inspectorProxy selfOopType.
	
	self assertNoGCIErrorDuring: [ optainedOop := self client send: 'asOop' to: inspectorProxyOopType ].
	self assert: optainedOop equals: inspectorProxyOop.
	
	inspectorProxy := nil.
	Smalltalk garbageCollect.
	Smalltalk garbageCollect.
	Smalltalk garbageCollect.
	self assertNotInInspectorProxyGCRegistry: inspectorProxyOop.
	
	self client executeString: 'System _vmMarkSweep'.
	self assertGCIErrorDuring: [ self client send: 'asOop' to: inspectorProxyOopType ].
	