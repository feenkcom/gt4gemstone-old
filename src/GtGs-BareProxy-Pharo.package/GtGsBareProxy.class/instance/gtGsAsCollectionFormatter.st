transforming
gtGsAsCollectionFormatter

	^ self gemstoneClient buildRemoteCollectionFormatter
			command: (self gtGsAsBlockStringArgument) ;
			yourself