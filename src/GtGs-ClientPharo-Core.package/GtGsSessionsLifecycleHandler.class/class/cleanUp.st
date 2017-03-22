cleanup
cleanUp
	"Clean unique instance."	
	self removeGemstoneClients.
	uniqueInstance ifNotNil: [ uniqueInstance delete ].
	uniqueInstance := nil