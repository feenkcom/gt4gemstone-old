remote - logic
sourceCodeForMethodLogic

	^ [ :currentMethodSelector :currentClassName :isMeta | |targetClass|
		targetClass := (GsSession currentSession symbolList 
			objectNamed: currentClassName asSymbol).
		isMeta ifTrue: [ targetClass := targetClass class ].
		(targetClass compiledMethodAt: currentMethodSelector) sourceString ]
	
	