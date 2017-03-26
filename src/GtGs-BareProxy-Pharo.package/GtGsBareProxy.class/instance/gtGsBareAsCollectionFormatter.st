transforming
gtGsBareAsCollectionFormatter
	"I return a formatter that can return "
	^ self gemstoneClient buildRemoteCollectionFormatter
			disableSTONSerialization;
			command: (self gtGsBareAsBlockStringArgument) ;
			yourself