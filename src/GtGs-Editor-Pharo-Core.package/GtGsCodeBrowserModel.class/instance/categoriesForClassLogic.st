remote - logic
categoriesForClassLogic
	
	^ [ :currentClassName :isMeta | |targetClass categoryNames|
		targetClass := (GsSession currentSession symbolList 
			objectNamed: currentClassName asSymbol).
		isMeta ifTrue: [ targetClass := targetClass class ].
		categoryNames := targetClass categoryNames sortWithBlock: [ :a :b | a < b ].
		categoryNames size > 0 
			ifTrue: [ { '--all--' } , categoryNames ] 
			ifFalse: [ categoryNames ] ]
	
	