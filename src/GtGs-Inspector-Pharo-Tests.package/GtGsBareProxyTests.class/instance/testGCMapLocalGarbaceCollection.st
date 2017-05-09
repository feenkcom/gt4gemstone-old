tests - gc
testGCMapLocalGarbaceCollection
	| bareProxy bareProxyOop |
	
	bareProxy := self client buildRemoteBareProxyFrom: 'Object new'.
	self assert: (self client proxyFinalizer garbageCollectionProxyMap at: bareProxy selfOop) equals: 1.
	
	bareProxyOop := bareProxy selfOop.
	bareProxy := nil.
	Smalltalk garbageCollect.
	Smalltalk garbageCollect.
	Smalltalk garbageCollect.
	
	self deny: (self client proxyFinalizer garbageCollectionProxyMap includesKey: bareProxyOop).
	
