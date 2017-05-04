tests - gc
testGCMapMultipleProxiesRemoval
	| bareProxy1 bareProxy2 |
	
	bareProxy1 := self client buildRemoteBareProxyFrom: 'Object'.
	
	self assert: (self client proxyFinalizer garbageCollectionProxyMap includesKey: bareProxy1 selfOop).
	self assert: (self client proxyFinalizer garbageCollectionProxyMap at: bareProxy1 selfOop) equals: 1.
	
	bareProxy2 := self client buildRemoteBareProxyFrom: 'Object'.
	self assert: (self client proxyFinalizer garbageCollectionProxyMap at: bareProxy1 selfOop) equals: 2.
	
	bareProxy2 := nil.
	Smalltalk garbageCollect.
	Smalltalk garbageCollect.
	Smalltalk garbageCollect.
	self assert: (self client proxyFinalizer garbageCollectionProxyMap at: bareProxy1 selfOop) equals: 1.
	
