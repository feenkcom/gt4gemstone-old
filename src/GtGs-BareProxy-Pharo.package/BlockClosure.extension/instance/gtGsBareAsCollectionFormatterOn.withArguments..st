*GtGs-BareProxy-Pharo
gtGsBareAsCollectionFormatterOn: aGemstoneClient withArguments: arguments 
	
	^ (self gtGsAsCollectionFormaterOn: aGemstoneClient withArguments: arguments) 
		disableSTONSerialization;
		remoteFormat: [ :anObject | anObject asString ];
		yourself