accessing - code
sourceCodeForMethod: aMethodSelector isMeta: isClassSide

	^ [ :currentMethodSelector :currentClassName :isMeta | |targetClass|
		targetClass := (GsSession currentSession symbolList 
			objectNamed: currentClassName asSymbol).
		isMeta ifTrue: [ targetClass := targetClass class ].
		(targetClass compiledMethodAt: currentMethodSelector) sourceString ]
			gtGsPerformRemotelyOn: self gemstoneClient 
			withArguments: { aMethodSelector . className . isClassSide}
	
	