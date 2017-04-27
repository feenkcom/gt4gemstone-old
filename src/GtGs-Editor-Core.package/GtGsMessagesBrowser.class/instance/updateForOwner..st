updating
updateForOwner: anOwner

	self 
		topezServer: anOwner topezServer;
		"targetObject: anOwner targetObject;"
		updateUninitializedBlocks;
		updateCacheBasic