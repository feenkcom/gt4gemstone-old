*GtGs-Inspector-Pharo-Core
gtGsBareAsListViewOn: aGemstoneClient withArguments: arguments 
	
	^ (self gtGsAsListViewOn: aGemstoneClient withArguments: arguments) 
		disableSTONSerialization;
		yourself