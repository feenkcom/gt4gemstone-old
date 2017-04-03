testing
testObjectWithErrorInPrintOn
	| erroneousResult |

	erroneousResult := self client evaluateStringRemotely: 
		' | x | 
		x := ', self newTestObjectWithPrintingError, '.
		x gtGsInspectorName'.
	self assert: erroneousResult equals: '<error printing>' 