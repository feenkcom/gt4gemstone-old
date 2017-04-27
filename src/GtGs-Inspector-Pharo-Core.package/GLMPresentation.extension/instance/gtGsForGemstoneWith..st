*GtGs-Inspector-Pharo-Core
gtGsForGemstoneWith: aBlock
	self flag: #gscompatibility
	"Method needed to ansure API compatibilty with the gemstone presentation.
	This method does not execute the block. Only the corresponding methods on
	the GemStone side executes the given block."