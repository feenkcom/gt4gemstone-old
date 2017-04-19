as yet unclassified
methodsPresentationOn: aComposite for: aMethodsList
	
	^ methodsPresentation := aComposite table
		display: [ aMethodsList sortWithBlock: [ :a :b | a inClass name < b inClass name ]  ];
		column: 'Class' evaluated: [ :aMethod | aMethod inClass name, '(', aMethod category asString, ')' ];
		column: 'Selector' evaluated: [ :aMethod | aMethod selector asString ];
		column: 'Category' evaluated: [ :aMethod | aMethod inClass category asString ];
		gsSelectionAct: [ :aGsPresenntation :selectedMethod | |methodRefs|  
				methodRefs := Smalltalk systemNavigation newSendersOf: selectedMethod selector.
				GtGsMessagesBrowser new 
					title: 'Senders of ', selectedMethod selector, ' [', methodRefs size asString, ']';
					updateForOwner: aGsPresenntation topezServer;
					startOn: methodRefs;
					open.
				true ]
			on: nil 
			entitled: 'Senders of...';
		yourself