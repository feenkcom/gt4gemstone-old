actions
compileSource: theSource forMethod: aMethod
  | selector newSelector |
  selector := aMethod selector.
  newSelector := aMethod methodClass
    compile: theSource withGemstoneLineEndings
    classified: (aMethod category ifNil: [ 'as yet unclassified' ]).
  (selector asSymbol ~~ newSelector "or: [ self object username notNil ]")
    ifTrue: [ "self differentMethodCreated: newSelector" ].
  ^ newSelector