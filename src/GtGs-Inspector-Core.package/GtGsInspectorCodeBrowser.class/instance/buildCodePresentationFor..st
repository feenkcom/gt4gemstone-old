building presentations
buildCodePresentationFor: aMethod
	
	codePresentation := GtGsGlmMethodPresentation new
		display: [ aMethod sourceString ];
		format: [ :aString | aString ];
		doItReceiver: [ targetObject ];
		attachCodeExecutionActions.
	codePresentation 
		updateForOwner: self;
		updateCache