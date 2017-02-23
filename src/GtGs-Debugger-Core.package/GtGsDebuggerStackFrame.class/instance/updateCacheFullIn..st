updating
updateCacheFullIn: aDebuggingSession
	"I am called to update all the information needed by the debugger from a stack frame.
	I will be called when the stack frame is selected in the debugger."
	
	self selectionRange.
	sourceCode := self homeMethodSource.
	inspectorVariableNodes := self inspectorVariableNodes.
	methodPresentation := self buildMethodPresentation.
	methodPresentation updateForOwner: aDebuggingSession