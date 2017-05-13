updating
updateFromFrame: aStackFrame
	"I update this stack frame with information from another stack frame object.
	The two stack frame objects should represent the same frame. I update information that
	are computed when #updateCacheFull is called and are needed when selecting 
	a stack frame in the debugger."
	
	sourceCode := aStackFrame cachedSourceCode.
	methodPresentation := aStackFrame methodPresentation.
	selectionRange := aStackFrame selectionRange.
	cachedSelector := aStackFrame selector.
	inspectorVariableNodes := aStackFrame inspectorVariableNodes