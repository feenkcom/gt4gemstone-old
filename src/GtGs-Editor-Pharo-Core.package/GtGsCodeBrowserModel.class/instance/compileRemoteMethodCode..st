actions - remote
compileRemoteMethodCode: aString
	| compiledMethodSelector newMethodCategoryName |
	
	newMethodCategoryName := (((categoryName = 'no messages') 
		or: [ categoryName = '--all--' ])
			or: [categoryName = 'as yet unclassified' ]) 
				ifTrue: [ nil ]
				ifFalse: [ categoryName ].
	compiledMethodSelector := self gemstoneClient 
		send: #compileSource:classified:inClassNamed:onClassSideIf:
		withArgs: { aString . newMethodCategoryName . className . (currentSide = #class) }.
	compiledMethodSelector 
		ifNil: [ ^ false ] 
		ifNotNil: [ 
			(categoryName = 'no messages')
				ifFalse: [ codeBrowser updateMethodsListAndSelect: compiledMethodSelector ]
				ifTrue: [ codeBrowser updateCategoriesSelectMethod: compiledMethodSelector].
			^ true ]