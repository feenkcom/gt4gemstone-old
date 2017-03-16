converting - proxy
gtGsAsCollectionProxy
	^ self gemstoneClient 
		bareProxyForOopType: self selfOopType 
		ofType: GtGsBareCollectionProxy