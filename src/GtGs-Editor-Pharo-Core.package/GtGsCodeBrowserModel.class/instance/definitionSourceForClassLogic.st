remote - logic
definitionSourceForClassLogic

	^ [ :currentClassName | 
			(GsSession currentSession symbolList 
				objectNamed: currentClassName asSymbol) definition ]
	
	