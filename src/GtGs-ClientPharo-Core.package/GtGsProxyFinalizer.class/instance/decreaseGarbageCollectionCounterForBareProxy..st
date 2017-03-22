private
decreaseGarbageCollectionCounterForBareProxy: aBareProxy
	| oopOccurences proxyOop |
	
	proxyOop := aBareProxy selfOop.
	self garbageCollectionMutex critical: [
		oopOccurences := self garbageCollectionProxyMap 
			at: proxyOop 
			ifAbsent: [ ^ self ].
		(oopOccurences = 1) 
			ifTrue: [
				"If the session with the remote stone is still active notify the stone
				to no longer keep a reference to the objects reprenting this proxy. "
				aBareProxy gemstoneClient ifNotNil: [ :aGemstoneClient |
					aGemstoneClient session ifNotNil: [ :aGciSession |
						aGciSession isSessionValid ifTrue: [ 
							
							aGciSession gciReleaseOops: {aBareProxy selfOopType} ]  ] ].
				
				self garbageCollectionProxyMap removeKey: proxyOop ] 
			ifFalse: [ self garbageCollectionProxyMap at: proxyOop put: (oopOccurences - 1) ] ]
	