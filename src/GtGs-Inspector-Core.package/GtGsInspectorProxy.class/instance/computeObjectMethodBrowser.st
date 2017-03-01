callbacks
computeObjectMethodBrowser
	
	codeBrowser := GtGsInspectorCodeBrowser new 
		topezServer: self topezServer;
		targetObject: self targetObject;
		buildSuperclassesPresentationFor: self targetObject class.
	^ self topezServer objectSerializer toString: codeBrowser