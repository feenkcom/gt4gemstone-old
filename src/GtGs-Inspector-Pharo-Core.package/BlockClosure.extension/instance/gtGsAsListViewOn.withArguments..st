*GtGs-Inspector-Pharo-Core
gtGsAsListViewOn: aGemstoneClient withArguments: arguments 
	
	^ aGemstoneClient buildRemoteListView
			command: (self gtGsAsExecutableStringWithArguments: arguments);
			yourself
		