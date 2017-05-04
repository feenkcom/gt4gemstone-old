tests - gc
testGCMapRemoteGarbaceCollection
	| bareProxy bareProxyOop bareProxyOopType |
	
	bareProxy := self client buildRemoteBareProxyFrom: 'Object new'.
	self assert: (self client proxyFinalizer garbageCollectionProxyMap at: bareProxy selfOop) equals: 1.
	
	bareProxyOop := bareProxy selfOop.
	bareProxyOopType := bareProxy selfOopType.
	self assertNoGCIErrorDuring: [ self client send: 'asOop' to: bareProxyOopType ].
	self assert: (self client session isObjectInPureExportSet: bareProxyOopType).
	
	bareProxy := nil.
	Smalltalk garbageCollect.
	Smalltalk garbageCollect.
	Smalltalk garbageCollect.
	
	self deny: (self client session isObjectInPureExportSet: bareProxyOopType).
	
	self client executeString: 'System _vmMarkSweep'.
	self assertGCIErrorDuring: [ self client send: 'asOop' to: bareProxyOopType ].
	
