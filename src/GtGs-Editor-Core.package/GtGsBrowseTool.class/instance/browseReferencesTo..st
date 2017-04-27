browsing
browseReferencesTo: aClassName
	| methodRefs |
	methodRefs := (self topezServer gtGsSystemNavigation gtGsReferencesTo: aClassName)
   		"collect: [ :gsMethod | MethodReference class: gsMethod inClass selector: gsMethod selector ]".
	self 
		openMessagesBrowserForMethods: methodRefs 
		withTitle: 'References to ', aClassName
		andAutoSelect: aClassName