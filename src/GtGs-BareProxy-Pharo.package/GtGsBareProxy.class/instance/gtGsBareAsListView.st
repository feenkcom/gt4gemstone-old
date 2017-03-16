transforming
gtGsBareAsListView

	^ self gemstoneClient buildRemoteListView
			disableSTONSerialization;
			command: (self gtGsAsBlockStringArgument) ;
			yourself