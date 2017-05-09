tests - gc
testGCMapMultipleProxiesAddition
	| bareProxy1 bareProxy2 |
	
	bareProxy1 := self client buildRemoteBareProxyFrom: 'Object'.
	
	self assert: (self client proxyFinalizer garbageCollectionProxyMap includesKey: bareProxy1 selfOop).
	self assert: (self client proxyFinalizer garbageCollectionProxyMap at: bareProxy1 selfOop) equals: 1.
	
	bareProxy2 := self client buildRemoteBareProxyFrom: 'Object'.
	self assert: (self client proxyFinalizer garbageCollectionProxyMap at: bareProxy1 selfOop) equals: 2.
