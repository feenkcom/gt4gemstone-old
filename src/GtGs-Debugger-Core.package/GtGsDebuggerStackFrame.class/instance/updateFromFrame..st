updating
updateFromFrame: aStackFrame

	sourceCode := aStackFrame cachedSourceCode.
	selectionRange := aStackFrame selectionRange.
	inspectorVariableNodes := aStackFrame inspectorVariableNodes