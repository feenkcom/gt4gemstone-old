testing
testObjectWithErrorInPrintOn
	| erroneousResult |

	erroneousResult := self client performStringRemotely: 
		' | x | 
		x := ', self newTestObjectWithPrintingError, '.
		x gtGsInspectorName'.
	self assert: erroneousResult equals: '<error printing>' 