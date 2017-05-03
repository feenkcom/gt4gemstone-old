browsing
browseSendersOf: aSelector
	| methodRefs |
	methodRefs := (self topezServer gtGsSystemNavigation gtGsSendersOf: aSelector)
   		"collect: [ :gsMethod | MethodReference class: gsMethod inClass selector: gsMethod selector ]".
	self 
		openMessagesBrowserForMethods: methodRefs 
		withTitle: 'Senders of ', aSelector
		andAutoSelect: aSelector