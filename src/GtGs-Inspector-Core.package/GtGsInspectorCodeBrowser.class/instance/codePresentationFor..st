building presentations
codePresentationFor: aMethod
	
	^ codePresentation := GtGsGlmMethodPresentation new
		display: [ aMethod sourceString ];
		format: [ :aString | aString ];
		doItReceiver: [ targetObject ];
		attachCodeExecutionActions