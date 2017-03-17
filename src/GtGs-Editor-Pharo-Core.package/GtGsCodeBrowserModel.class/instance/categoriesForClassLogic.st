remote - logic
categoriesForClassLogic
	
	^ [ :currentClassName :isMeta | |targetClass|
		targetClass := (GsSession currentSession symbolList 
			objectNamed: currentClassName asSymbol).
		isMeta ifTrue: [ targetClass := targetClass class ].
		targetClass categories sortWithBlock: [ :a :b | a < b ] ]
	
	