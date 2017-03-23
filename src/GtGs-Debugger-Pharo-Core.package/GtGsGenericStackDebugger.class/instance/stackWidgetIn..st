building presentations
stackWidgetIn: composite

	^ composite fastList	
		title: 'Stack';
		display: [:aSession | self retrieveStackFrom: aSession ];
		format: #gtGsDebugString;
		icon: [ :aStackFrame | aStackFrame gtGsDebuggingIcon ];
		send: [ :aStackFrame |
			aStackFrame class = GtGsDebuggerStackFrame ifTrue: [  
				self session updateStackFrameIfRequired: aStackFrame ].
			"self session navigateFrame: aStackFrame."
			aStackFrame ]