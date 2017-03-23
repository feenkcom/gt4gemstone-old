converting - proxy
gtGsAsCollectionProxy
	"I convert the bare proxy to a collection proxy. A collection proxy can perform special
	operations like filtering and transforming the elements of the collection."
	
	^ self gemstoneClient 
		bareProxyForOopType: self selfOopType 
		ofType: GtGsBareCollectionProxy