browsing
browseImplementorsOf: aSelector
	| methodRefs |
	methodRefs := (self topezServer gtGsSystemNavigation gtGsImplementorsOf: aSelector)
   		"collect: [ :gsMethod | MethodReference class: gsMethod inClass selector: gsMethod selector ]".
	self 
		openMessagesBrowserForMethods: methodRefs 
		withTitle: 'Implementors of ', aSelector
		andAutoSelect: aSelector