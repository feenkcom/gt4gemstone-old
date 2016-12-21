actions
selectedCodeRangeForContext: selectedContext
	| selectionInterval |

	selectedContext class ~= GtGsDebuggerStackFrame ifTrue: [
		^ self clientSession selectedCodeRangeForContext: selectedContext ].

	selectionInterval := self gemstoneDebuggerSession selectedCodeRangeForContext: selectedContext.
	^ selectionInterval ifEmpty: [ 1 to: 0 ]