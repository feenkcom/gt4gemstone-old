cleanup
reset
	"self reset"
	uniqueInstance ifNotNil: [ uniqueInstance terminateAllSessions ].
	uniqueInstance := nil