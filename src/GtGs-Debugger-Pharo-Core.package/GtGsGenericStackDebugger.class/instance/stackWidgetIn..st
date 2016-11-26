building presentations
stackWidgetIn: composite

	^ composite list	
		title: 'Stack';
		display: [:aSession | self retrieveStackFrom: aSession ];
		format: #gtGsDebugString;
		send: [ :aStackFrame |
			aStackFrame class = GtGsDebuggerStackFrame ifTrue: [  
				self session updateStackFrameIfRequired: aStackFrame ].
			"self session navigateFrame: aStackFrame."
			aStackFrame ]