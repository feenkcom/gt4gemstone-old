accessing - views
symbolDictionariesListPresentationIn: aComposite

	^ aComposite list
		display: self symbolDictionariesLogic;
		format: [ :each | each asString ]
		