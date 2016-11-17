instance creation
debugSession: aSession
	
	aSession isAboutUIProcess
		ifTrue: [ UIManager default spawnNewProcess ].
	UIManager default
		defer: [ | debugger | 
			debugger := self new.
			aSession debugger: debugger.
			debugger openOn: aSession ].
	aSession clientProcess suspend