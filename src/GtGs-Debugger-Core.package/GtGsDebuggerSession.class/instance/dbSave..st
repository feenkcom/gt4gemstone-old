debugging actions
dbSave: sourceCode
	| currentFrame newSelector |
	
	currentFrame := self stack currentFrame.
	currentFrame inClass ifNil: [ 
		^ self topezServer objectSerializer toString: { #informClient:. 'Cannot edit Executable Code' }].

	newSelector := self topezServer 
		compileSource: sourceCode 
		classified: 	(currentFrame method inClass categoryOfSelector: currentFrame method selector) 
		inClass: currentFrame inClass.

	currentFrame selector asSymbol == newSelector asSymbol
		ifTrue: [ 
			currentFrame trimToHomeFrame.
			^ self topezServer objectSerializer toString: 
				{ #listIndex: . self stack currentFrame frameIndex } ].
  ^ self topezServer objectSerializer toString: { 
		#informClient:. 'New method created' }