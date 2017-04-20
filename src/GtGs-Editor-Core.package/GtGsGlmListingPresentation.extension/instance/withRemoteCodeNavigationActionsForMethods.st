*GtGs-Editor-Core
withRemoteCodeNavigationActionsForMethods

	self
		gsSelectionAct: [ :aGsPresentation :selectedMethod | |aSelector|  
				aSelector := selectedMethod selector.
				aGsPresentation topezServer gtGsBrowseTool browseSendersOf: aSelector.
				true ]
			on: nil 
			entitled: 'Senders of...';
		gsSelectionAct: [ :aGsPresentation :selectedMethod | |aSelector|  
				aSelector := selectedMethod selector.
				aGsPresentation topezServer gtGsBrowseTool browseImplementorsOf: aSelector.
				true ]
			on: nil 
			entitled: 'Implementors of...'