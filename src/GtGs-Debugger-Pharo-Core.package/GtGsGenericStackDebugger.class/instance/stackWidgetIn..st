building presentations
stackWidgetIn: composite

	^ composite list	
		title: 'Stack';
		display: [:aSession | (self retrieveStackFrom: aSession) frames ];
		format: #cachedFrameLabel;
		send: [ :aStackFrame |
			self session updateStackFrameIfRequired: aStackFrame.
			self session navigateFrame: aStackFrame.
			aStackFrame ]