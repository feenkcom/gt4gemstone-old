callbacks
computeObjectMethodBrowser
	
	methodsBrowser := GtGsInspectorMethodsBrowser new 
		topezServer: self topezServer;
		initializeSuperclassesFor: self targetObject class.
	^ self topezServer objectSerializer toString: methodsBrowser