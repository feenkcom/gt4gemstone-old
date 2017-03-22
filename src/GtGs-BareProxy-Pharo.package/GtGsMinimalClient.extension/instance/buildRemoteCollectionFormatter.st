*GtGs-BareProxy-Pharo
buildRemoteCollectionFormatter
	^ GtGsBareCollectionProxyFormatter new 
		gemstoneClient: self;
		enableSTONSerialization;
		yourself