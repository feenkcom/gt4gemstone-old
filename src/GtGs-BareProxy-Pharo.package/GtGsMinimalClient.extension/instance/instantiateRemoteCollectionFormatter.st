*GtGs-BareProxy-Pharo
instantiateRemoteCollectionFormatter
	^ GtGsCollectionFormatter new 
		gemstoneClient: self;
		serializer: GtGsSTONCollectionSerializationStrategy new;
		yourself