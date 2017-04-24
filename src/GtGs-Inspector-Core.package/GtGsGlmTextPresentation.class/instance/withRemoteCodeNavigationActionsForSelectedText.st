scripting
withRemoteCodeNavigationActionsForSelectedText

	self
		gsSelectionAct: [ :aGsPresentation :aSelectedText| |className|
				className := aSelectedText trimBlanks.
				aGsPresentation topezServer gtGsBrowseTool browseFull: className.
				true ]
			on: nil 
			entitled: 'Browse class full';
		gsSelectionAct: [ :aGsPresentation :aSelectedText | |className|
				className := aSelectedText trimBlanks.
				aGsPresentation topezServer gtGsBrowseTool browseReferencesTo: className.
				true ]
			on: nil 
			entitled: 'References to ...'.
	self
		gsSelectionAct: [ :aGsPresentation :aSelectedText | |aSelector|  
				aSelector := self findSelectorFor: aSelectedText.
				aGsPresentation topezServer gtGsBrowseTool browseSendersOf: aSelector.
				true ]
			on: nil 
			entitled: 'Senders of...';
		gsSelectionAct: [ :aGsPresentation :aSelectedText | |aSelector|  
				aSelector := self findSelectorFor: aSelectedText.
				aGsPresentation topezServer gtGsBrowseTool browseImplementorsOf: aSelector.
				true ]
			on: nil 
			entitled: 'Implementors of...'