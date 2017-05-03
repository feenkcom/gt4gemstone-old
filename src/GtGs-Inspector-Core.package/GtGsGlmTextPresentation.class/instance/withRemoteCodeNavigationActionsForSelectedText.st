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
			entitled: 'References to it'.
	self
		gsSelectionAct: [ :aGsPresentation :aSelectedText | |aSelector|  
				aSelector := aGsPresentation findSelectorFor: aSelectedText.
				aSelector 
					ifNil: [ aGsPresentation topezServer 
						informClient: 'No symbol matching the selector pattern found in: ''', aSelectedText, ''''.
						false ]
					ifNotNil: [ 
						aGsPresentation topezServer gtGsBrowseTool browseSendersOf: aSelector.
						true ] ]
			on: nil 
			entitled: 'Senders of it';
		gsSelectionAct: [ :aGsPresentation :aSelectedText | |aSelector|  
				aSelector := aGsPresentation findSelectorFor: aSelectedText.
				aSelector 
					ifNil: [ aGsPresentation topezServer 
						informClient: 'No symbol matching the selector pattern found in: ''', aSelectedText, ''''.
						false ]
					ifNotNil: [
						aGsPresentation topezServer gtGsBrowseTool browseImplementorsOf: aSelector.
						true ] ]
			on: nil 
			entitled: 'Implementors of it'