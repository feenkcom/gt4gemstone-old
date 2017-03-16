finalization
finalize
	"self isProxyObjectActive ifTrue: [ self class decreaseGarbageCollectionCounterForOop: self selfOop ]"