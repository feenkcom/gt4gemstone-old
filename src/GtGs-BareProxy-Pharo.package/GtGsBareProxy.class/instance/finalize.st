finalization
finalize
	self isProxyObjectActive 
		ifTrue: [ self class decreaseGarbageCollectionCounterForProxy: self ]
		ifFalse: [ self class removeFromGarbareCollectionProxy: self  ]