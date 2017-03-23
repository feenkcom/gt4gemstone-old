code execution
compileSource: methodString classified: aCategoryName inClassNamed: aClassName onClassSideIf: isClassSide
  | methodClass |
  
	methodClass := GsCurrentSession currentSession symbolList objectNamed: aClassName.
	isClassSide ifTrue: [ methodClass := methodClass class ].
	(methodClass includesSelector: #compile:classified:)
		ifTrue: [ 
			methodClass
 		   		compile: methodString gtGsWithGemstoneLineEndings
   				classified: (aCategoryName ifNil: [ 'as yet unclassified' ]).
  			"(selector asSymbol ~~ newSelector)
    			ifTrue: [ self differentMethodCreated: newSelector ]."
  			^ self parseSelector: methodString for: methodClass ]
		ifFalse: [ 
			methodClass
				compileMethod: methodString gtGsWithGemstoneLineEndings
   				dictionaries: GsCurrentSession currentSession symbolList
    			category: (aCategoryName ifNil: [ 'as yet unclassified' ])
   				environmentId: 0.
			^ self parseSelector: methodString for: methodClass ]

  