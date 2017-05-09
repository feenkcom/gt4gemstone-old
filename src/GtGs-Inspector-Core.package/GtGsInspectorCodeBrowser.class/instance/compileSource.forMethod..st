actions
compileSource: theSource forMethod: aMethod
  | selector newSelector |
  selector := aMethod selector.

	(aMethod methodClass includesSelector: #compile:classified:)
		ifTrue: [ 
			newSelector := aMethod methodClass
 		   		compile: theSource gtGsWithGemstoneLineEndings
   				classified: ((aMethod inClass categoryOfSelector: aMethod selector)  ifNil: [ 'as yet unclassified' ]).
  			(selector asSymbol ~~ newSelector "or: [ self object username notNil ]")
    			ifTrue: [ "self differentMethodCreated: newSelector" ].
  			^ newSelector ]
		ifFalse: [ 
			aMethod methodClass
				compileMethod: theSource gtGsWithGemstoneLineEndings
   				dictionaries: GsCurrentSession currentSession symbolList
    			category: ((aMethod inClass categoryOfSelector: aMethod selector) ifNil: [ 'as yet unclassified' ])
   				environmentId: 0 ]

  