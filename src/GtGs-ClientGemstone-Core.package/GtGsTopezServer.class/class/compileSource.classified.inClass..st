code execution
compileSource: methodString classified: aCategoryName inClass: methodClass

	(methodClass gtGsLookupSelector: #compile:classified:) notNil
		ifTrue: [ 
			methodClass
 		   		compile: methodString gtGsWithGemstoneLineEndings
   				classified: (aCategoryName ifNil: [ 'as yet unclassified' ]).
  			"(selector asSymbol ~~ newSelector)
    			ifTrue: [ self differentMethodCreated: newSelector ]."
  			^ Behavior gtGsParseSelector: methodString for: methodClass ]
		ifFalse: [ 
			methodClass
				compileMethod: methodString gtGsWithGemstoneLineEndings
   				dictionaries: GsCurrentSession currentSession symbolList
    			category: (aCategoryName ifNil: [ 'as yet unclassified' ])
   				environmentId: 0.
			^ Behavior gtGsParseSelector: methodString for: methodClass ]