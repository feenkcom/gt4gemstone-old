running
setUp
	super setUp.
	client := (GtGsBareClient loginWith: self sessionDescription)
		debugMode: self debugMode;
		yourself