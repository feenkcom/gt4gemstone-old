*GtGs-Editor-Core
withRemoteCodeNavigationActionsForMethods

	self
		gsSelectionAct: [ :aGsPresentation :selectedMethod |
				aGsPresentation topezServer gtGsBrowseTool browseFullMethod: selectedMethod.
				true ]
			on: $b 
			entitled: 'Browse class full';
		gsSelectionAct: [ :aGsPresentation :selectedMethod | |className|
				className := selectedMethod inClass name.
				aGsPresentation topezServer gtGsBrowseTool browseReferencesTo: className.
				true ]
			on: $N
			entitled: 'References to it'.
	self
		gsSelectionAct: [ :aGsPresentation :selectedMethod | |aSelector|  
				aSelector := selectedMethod selector.
				aGsPresentation topezServer gtGsBrowseTool browseSendersOf: aSelector.
				true ]
			on: $n 
			entitled: 'Senders of it';
		gsSelectionAct: [ :aGsPresentation :selectedMethod | |aSelector|  
				aSelector := selectedMethod selector.
				aGsPresentation topezServer gtGsBrowseTool browseImplementorsOf: aSelector.
				true ]
			on: $m 
			entitled: 'Implementors of it'