*GtGs-ClientGemstone-Topez
debugString: aString inContext: compilationContext literalVars: litVarArrayOrNil
	| debugString |
	debugString :='self halt.
[
',aString, '
] value'.
	self  
		evaluateString: debugString 
		inContext: compilationContext 
		literalVars: litVarArrayOrNil.
	
	"| compiledMethod |
	compiledMethod := self 
		compileString: aString 
		inContext: compilationContext 
		literalVars: litVarArrayOrNil.
	compiledMethod setBreakAtStepPoint: 1.
 	^ compiledMethod _executeInContext: compilationContext"
			