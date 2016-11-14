building presentations
stackWidgetIn: composite

	^ composite list	
		title: 'Stack';
		display: [:aSession | (self retrieveStackFrom: aSession) frames ];
		format: #cachedFrameLabel;
		send: [ :aStackFrame |
			self session updateStackFrame: aStackFrame.
			aStackFrame ]