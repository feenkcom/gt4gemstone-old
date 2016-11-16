as yet unclassified
resumeClientProcess
	"Make sure the interrupted process is restored properly and restart the low space handler"
	
	clientProcess isTerminated
		ifFalse: [errorWasInUIProcess
				ifTrue: [UIManager default resumeUIProcess: clientProcess]
				ifFalse: [clientProcess resume]].

	Smalltalk installLowSpaceWatcher.	"restart low space handler".
		
	