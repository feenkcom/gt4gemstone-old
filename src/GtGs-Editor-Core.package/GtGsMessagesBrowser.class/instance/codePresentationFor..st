building presentations
codePresentationFor: aMethod
	
	^ codePresentation := GtGsGlmMethodPresentation new
		display: [ aMethod sourceString ];
		format: [ :aString | aString ];
		doItReceiver: [ aMethod inClass ];
		attachCodeExecutionActions;
		gtGsForGemstoneWith: [ :aGtGsPresentation |
			aGtGsPresentation parameters at: 'selectionString' put: self selectionString ]
		