gci api
registerForGarbageCollectionOop: anOop
	| oopOccurences |
	
	self garbageCollectionMutex critical: [
		oopOccurences := self garbageCollectionProxyMap 
			at: anOop 
			ifAbsent: [ self garbageCollectionProxyMap at: anOop put: 0 ].
		self garbageCollectionProxyMap at: anOop put: (oopOccurences + 1) ]