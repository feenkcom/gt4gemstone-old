tests - gc
testGCMapOneProxyAddition
	| bareProxy |
	
	bareProxy := self client buildRemoteBareProxyFrom: 'Object new'.
	
	self assert: (self client proxyFinalizer garbageCollectionProxyMap includesKey: bareProxy selfOop).
	self assert: (self client proxyFinalizer garbageCollectionProxyMap at: bareProxy selfOop) equals: 1.
