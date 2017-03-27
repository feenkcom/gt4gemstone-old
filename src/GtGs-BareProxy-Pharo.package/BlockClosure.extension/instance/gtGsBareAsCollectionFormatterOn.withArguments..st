*GtGs-BareProxy-Pharo
gtGsBareAsCollectionFormatterOn: aGemstoneClient withArguments: arguments 
	
	^ aGemstoneClient buildRemoteBareCollectionFormatterFor: (
			self gtGsAsExecutableStringWithArguments: arguments)