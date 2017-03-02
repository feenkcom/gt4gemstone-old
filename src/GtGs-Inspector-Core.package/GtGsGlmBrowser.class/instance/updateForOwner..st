updating
updateForOwner: anOwner

	self 
		topezServer: anOwner topezServer;
		updateUninitializedBlocks;
		updateCacheBasic