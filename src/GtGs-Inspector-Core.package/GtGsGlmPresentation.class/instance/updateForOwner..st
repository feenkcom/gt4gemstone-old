updating
updateForOwner: anOwner
	"I update this presentation so that it can be serialized correctly
	and used in Glamour. I must be called after the prentation is created
	and before I am serialized and sent to the Pharo side."
	
	self
		proxyOwner: anOwner;
		updateForwarder;
		updateUninitializedBlocks;
		updateCacheBasic