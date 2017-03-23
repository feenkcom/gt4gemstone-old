transforming
gtGsBareAsCollectionFormatter

	^ self gemstoneClient buildRemoteCollectionFormatter
			disableSTONSerialization;
			command: (self gtGsAsBlockStringArgument) ;
			yourself