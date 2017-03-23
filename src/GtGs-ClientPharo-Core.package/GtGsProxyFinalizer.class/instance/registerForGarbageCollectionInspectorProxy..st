gc api
registerForGarbageCollectionInspectorProxy: anInspectorProxy
	| proxyOop |
	
	proxyOop := anInspectorProxy selfOop.
		
	self class finalizationRegistry 
		add: anInspectorProxy 
		executor:
			(ObjectFinalizer new
				receiver: self
				selector: #releaseInspectorProxyWithOopAndClient:
				argument: { proxyOop . anInspectorProxy gemstoneClient }).
		
	^ anInspectorProxy