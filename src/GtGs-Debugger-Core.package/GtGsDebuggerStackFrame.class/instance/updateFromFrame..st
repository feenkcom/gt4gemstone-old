as yet unclassified
updateFromFrame: aStackFrame

	sourceCode := aStackFrame cachedSourceCode.
	selectionRange := aStackFrame selectionRange.
	inspectorVariableNodes := aStackFrame inspectorVariableNodes