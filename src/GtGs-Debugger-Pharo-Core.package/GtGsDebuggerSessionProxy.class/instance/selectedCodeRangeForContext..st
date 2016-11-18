actions
selectedCodeRangeForContext: selectedContext
	| selectionInterval |

	selectionInterval := self gemstoneDebuggerSession selectedCodeRangeForContext: selectedContext.
	^ selectionInterval ifEmpty: [ 1 to: 0 ]