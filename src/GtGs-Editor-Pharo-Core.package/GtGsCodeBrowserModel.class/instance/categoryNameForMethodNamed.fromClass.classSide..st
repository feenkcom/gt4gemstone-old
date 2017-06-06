accessing - remote
categoryNameForMethodNamed: aMethodName fromClass: aClassName classSide: aBoolean
	
	^ [ :currentClassName :currentMethodName :isClassSide | | targetClass compiledMethod |
		targetClass := GsSession currentSession symbolList objectNamed: currentClassName asSymbol.
		isClassSide ifTrue: [ targetClass := targetClass class ].
		compiledMethod := targetClass compiledMethodAt: currentMethodName.
		compiledMethod inClass categoryOfSelector: compiledMethod selector ]
			gtGsBarePerformRemotelyOn: self gemstoneClient 
			withArguments: { aClassName . aMethodName. aBoolean }
	