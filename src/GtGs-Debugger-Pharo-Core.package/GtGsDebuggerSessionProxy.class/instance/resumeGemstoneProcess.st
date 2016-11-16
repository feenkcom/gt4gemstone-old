debugging actions
resumeGemstoneProcess
	| processResult |

	processResult := self gemstoneClient
		executeRemotely: #dbContinue 
		on: self gemstoneDebuggerSessionOopType
		withArguments: #().

	processResult size = 1 
		ifTrue: [ self perform: processResult first ].
	processResult size > 1
		ifTrue: [ self 
			perform: processResult first 
			withEnoughArguments: processResult copyWithoutFirst ].
	