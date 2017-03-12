private
bareProxyForOopType: anOopType
	^ GtGsBareProxy new 
		gemstoneClient:self;
		selfOopType: anOopType
