updating
updateUninitializedBlocks
	
	displayBlock ifNil: [ displayBlock := [ { self } ] ].
	"Set displayBlock, if missing, before calling the super method."
	super updateUninitializedBlocks.
	
	iconIdBlock ifNil: [ iconIdBlock := [ :anObject |  nil ] ]