code execution
compileSource: methodString classified: aCategoryName inClassNamed: aClassName onClassSideIf: isClassSide
  | methodClass |
  
	methodClass := GsCurrentSession currentSession symbolList objectNamed: aClassName.
	isClassSide ifTrue: [ methodClass := methodClass class ].
	^ self compileSource: methodString classified: aCategoryName inClass: methodClass

  