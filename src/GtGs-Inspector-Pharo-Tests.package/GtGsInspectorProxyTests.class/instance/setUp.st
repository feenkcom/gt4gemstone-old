running
setUp
	super setUp.
	client := (GtGsMinimalClient loginWith: self sessionDescription)
		debugMode: self debugMode;
		yourself