cleanup
cleanUp
	"Clean unique instance."	
	self deleteGemstoneClients.
	uniqueInstance ifNotNil: [ uniqueInstance delete ].
	uniqueInstance := nil