code execution
compileSource: theSource classified: aCategoryName inClassNamed: aClassName onClassSideIf: isClassSide
  | methodClass |
  
	methodClass := GsCurrentSession currentSession symbolList objectNamed: aClassName.
	isClassSide ifTrue: [ methodClass := methodClass class ].
	(methodClass includesSelector: #compile:classified:)
		ifTrue: [ 
			methodClass
 		   		compile: theSource gtGsWithGemstoneLineEndings
   				classified: (aCategoryName ifNil: [ 'as yet unclassified' ]).
  			"(selector asSymbol ~~ newSelector)
    			ifTrue: [ self differentMethodCreated: newSelector ]."
  			^ true]
		ifFalse: [ 
			methodClass
				compileMethod: theSource gtGsWithGemstoneLineEndings
   				dictionaries: GsCurrentSession currentSession symbolList
    			category: (aCategoryName ifNil: [ 'as yet unclassified' ])
   				environmentId: 0.
			^ true ]

  