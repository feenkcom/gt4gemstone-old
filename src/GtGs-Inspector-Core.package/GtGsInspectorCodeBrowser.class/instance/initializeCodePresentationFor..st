initialization
initializeCodePresentationFor: aMethod
	
	codePresentation := GtGsGlmMethodPresentation new
		display: [ aMethod sourceString ];
		format: [ :aString | aString ].
	codePresentation 
		updateForOwner: self;
		updateCache