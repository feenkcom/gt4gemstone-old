instance creation
debugSession: aSession
	
	aSession isAboutUIProcess
		ifTrue: [ UIManager default spawnNewProcess ].
	UIManager default
		defer: [ super debugSession: aSession ].
	aSession clientProcess suspend