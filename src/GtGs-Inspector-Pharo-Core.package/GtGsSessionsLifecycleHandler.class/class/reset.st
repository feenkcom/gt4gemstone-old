cleanup
reset
	"self reset"
	uniqueInstance ifNotNil: [ uniqueInstance terminateAllGemstoneClients ].
	uniqueInstance := nil