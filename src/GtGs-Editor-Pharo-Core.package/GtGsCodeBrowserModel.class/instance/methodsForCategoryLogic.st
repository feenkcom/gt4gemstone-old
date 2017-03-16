remote - blocks
methodsForCategoryLogic
	
	^ [ :currentCategoryName :currentClassName :isMeta | |targetClass targetCategory|
		targetCategory := currentCategoryName asSymbol.
		targetClass := (GsSession currentSession symbolList 
			objectNamed: currentClassName asSymbol).
		isMeta ifTrue: [ targetClass := targetClass class ].
		(targetClass selectors select: [ :aSelector |
			(targetClass compiledMethodAt: aSelector) category = targetCategory])
				sortWithBlock: [ :a :b | a < b ] ]
	
	