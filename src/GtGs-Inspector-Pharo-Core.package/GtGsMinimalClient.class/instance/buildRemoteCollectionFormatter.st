private
buildRemoteCollectionFormatter
	^ GtGsBareCollectionProxyFormatter new 
		gemstoneClient: self;
		enableSTONSerialization;
		yourself