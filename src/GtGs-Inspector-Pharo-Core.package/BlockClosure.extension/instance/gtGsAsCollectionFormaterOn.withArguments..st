*GtGs-Inspector-Pharo-Core
gtGsAsCollectionFormaterOn: aGemstoneClient withArguments: arguments 
	
	^ aGemstoneClient buildRemoteCollectionFormatter
			command: (self gtGsAsExecutableStringWithArguments: arguments);
			yourself
		