remote - logic
methodsForCategoryLogic
	
	^ [ :currentCategoryName :currentClassName :isMeta | |targetClass targetCategory|
		targetCategory := currentCategoryName asSymbol.
		targetClass := (GsSession currentSession symbolList 
			objectNamed: currentClassName asSymbol).
		isMeta ifTrue: [ targetClass := targetClass class ].
		
		(currentCategoryName = '--all--') 
			ifTrue: [ targetClass selectors sortWithBlock: [ :a :b | a < b ] ]
			ifFalse: [ (targetClass selectors select: [ :aSelector ||gsnMethod|
				gsnMethod := targetClass compiledMethodAt: aSelector.
				(gsnMethod inClass categoryOfSelector: gsnMethod selector) = targetCategory ])
					sortWithBlock: [ :a :b | a < b ] ] ]