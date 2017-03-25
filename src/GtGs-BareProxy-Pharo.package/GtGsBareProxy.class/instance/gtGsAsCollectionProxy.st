converting - proxy
gtGsAsCollectionProxy
	"I convert the bare proxy to a collection proxy. A collection proxy can perform special
	operations like filtering and transforming the elements of the collection. I do no checks
	to ensure that the remote object is actually a collection. It is the responsability of
	the caller to ensure that this is true."
	
	^ self gemstoneClient 
		bareProxyForOopType: self selfOopType 
		ofType: GtGsBareCollectionProxy