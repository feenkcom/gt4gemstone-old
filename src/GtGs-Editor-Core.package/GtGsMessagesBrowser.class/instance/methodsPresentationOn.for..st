as yet unclassified
methodsPresentationOn: aComposite for: aMethodsList
	
	^ methodsPresentation := aComposite table
		display: [ aMethodsList sortWithBlock: [ :a :b | a inClass name < b inClass name ]  ];
		column: 'Class' evaluated: [ :aMethod | aMethod inClass name, '(', aMethod category asString, ')' ];
		column: 'Selector' evaluated: [ :aMethod | aMethod inClass name ];
		column: 'Category' evaluated: [ :aMethod | aMethod inClass category asString ];
		gsSelectionAct: [ :aGsPresenntation :selectedMethod | |selector methodRefs|  
				selector := selectedMethod selector.
				"selector := aSymbol."
				methodRefs := Smalltalk systemNavigation newSendersOf: selector asSymbol.
				GtGsMessagesBrowser new 
					startOn: methodRefs;
					openUsing: aGsPresenntation topezServer.
				true ]
			on: nil 
			entitled: 'Test (experimental)'