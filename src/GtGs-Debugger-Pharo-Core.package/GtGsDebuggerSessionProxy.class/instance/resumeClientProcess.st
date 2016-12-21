debugging actions
resumeClientProcess
	"Make sure the interrupted process is restored properly and restart the low space handler"
	
	self clientProcess isTerminated
		ifFalse: [self errorWasInUIProcess
				ifTrue: [UIManager default resumeUIProcess: self clientProcess]
				ifFalse: [self clientProcess resume]].

	Smalltalk installLowSpaceWatcher.	"restart low space handler".
		
	