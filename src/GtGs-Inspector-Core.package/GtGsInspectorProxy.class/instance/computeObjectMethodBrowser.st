callbacks
computeObjectMethodBrowser
	
	methodsBrowser := GtGsInspectorMethodsBrowser new 
		topezServer: self topezServer;
		initializeSuperclassesPresentationFor: self targetObject class.
	^ self topezServer objectSerializer toString: methodsBrowser