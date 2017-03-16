transforming
gtGsAsListView

	^ self gemstoneClient buildRemoteListView
			command: (self gtGsAsBlockStringArgument) ;
			yourself