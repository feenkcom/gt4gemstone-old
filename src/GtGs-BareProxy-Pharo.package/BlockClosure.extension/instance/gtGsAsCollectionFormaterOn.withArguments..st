*GtGs-BareProxy-Pharo
gtGsAsCollectionFormaterOn: aGemstoneClient withArguments: arguments 
	
	^ aGemstoneClient buildRemoteCollectionFormatter
			command: (self gtGsAsExecutableStringWithArguments: arguments);
			yourself
		