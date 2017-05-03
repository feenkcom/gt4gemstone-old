*GtGs-Editor-Core
withRemoteCodeNavigationActionsForMethods

	self
		gsSelectionAct: [ :aGsPresentation :selectedMethod | |className|
				className := selectedMethod inClass name.
				aGsPresentation topezServer gtGsBrowseTool browseFull: className.
				true ]
			on: nil 
			entitled: 'Browse class full';
		gsSelectionAct: [ :aGsPresentation :selectedMethod | |className|
				className := selectedMethod inClass name.
				aGsPresentation topezServer gtGsBrowseTool browseReferencesTo: className.
				true ]
			on: nil 
			entitled: 'References to it'.
	self
		gsSelectionAct: [ :aGsPresentation :selectedMethod | |aSelector|  
				aSelector := selectedMethod selector.
				aGsPresentation topezServer gtGsBrowseTool browseSendersOf: aSelector.
				true ]
			on: nil 
			entitled: 'Senders of it';
		gsSelectionAct: [ :aGsPresentation :selectedMethod | |aSelector|  
				aSelector := selectedMethod selector.
				aGsPresentation topezServer gtGsBrowseTool browseImplementorsOf: aSelector.
				true ]
			on: nil 
			entitled: 'Implementors of it'