*GtGs-BareProxy-Pharo
gtGsAsCollectionFormatterOn: aGemstoneClient withArguments: arguments 
	
	^ aGemstoneClient buildRemoteCollectionFormatterFor: (
			self gtGsAsExecutableStringWithArguments: arguments)
		