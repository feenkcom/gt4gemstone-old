private
buildRemoteListView
	^ GtGsBareListView new 
		gemstoneClient: self;
		enableSTONSerialization;
		yourself