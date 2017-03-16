gci api
decreaseGarbageCollectionCounterForOop: anOop
	| oopOccurences |
	
	self garbageCollectionMutex critical: [
		oopOccurences := self garbageCollectionProxyMap 
			at: anOop 
			ifAbsent: [ ^ self ].
		(oopOccurences = 1) 
			ifTrue: [
				"Notify here gemstone to release the object, check for an error and then remove it from the local map."
				self garbageCollectionProxyMap removeKey: anOop ] 
			ifFalse: [ self garbageCollectionProxyMap at: anOop put: (oopOccurences - 1) ] ]
	