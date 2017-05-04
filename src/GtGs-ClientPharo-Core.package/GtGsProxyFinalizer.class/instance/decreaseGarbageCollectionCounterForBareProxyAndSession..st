private
decreaseGarbageCollectionCounterForBareProxyAndSession: aTwoElementsArray
	"I decrement the number of instances having the given oop. If this was the last
	reference to the proxy I make a GCI request to the remote side to remove the
	remote object from the export set. I only remove the object if its associated 
	session is still active."
	| bareProxyOop registeredSession oopOccurences |
	
	bareProxyOop      := aTwoElementsArray first.
	registeredSession := aTwoElementsArray second.
	
	self garbageCollectionMutex critical: [		
		"The proxy map will be nill if the finalizer was detached from the client."
		self garbageCollectionProxyMap ifNil: [ ^ self ].
		
		oopOccurences := self garbageCollectionProxyMap 
			at: bareProxyOop 
			ifAbsent: [ ^ self ].
		(oopOccurences = 1) 
			ifTrue: [
				"Only ff the session with the remote stone is still active notify the stone
				to no longer keep a reference to the objects reprenting this proxy. "
				registeredSession ifNotNil: [ 
					registeredSession isSessionValid ifTrue: [ 
						registeredSession gciReleaseOops: {registeredSession asOopType: bareProxyOop} ] ].
				
				self garbageCollectionProxyMap removeKey: bareProxyOop ] 
			ifFalse: [ self garbageCollectionProxyMap at: bareProxyOop put: (oopOccurences - 1) ] ]
	