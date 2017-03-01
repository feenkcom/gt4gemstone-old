callbacks
computeObjectMethodBrowser
	
	codeBrowser := GtGsInspectorCodeBrowser new 
		topezServer: self topezServer;
		initializeSuperclassesPresentationFor: self targetObject class.
	^ self topezServer objectSerializer toString: codeBrowser