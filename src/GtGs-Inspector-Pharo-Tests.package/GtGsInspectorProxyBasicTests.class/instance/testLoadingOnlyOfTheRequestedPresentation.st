tests
testLoadingOnlyOfTheRequestedPresentation
	| inspectorProxy gsItemsPresentation gsOtherPresentations |
	
	inspectorProxy := self client objectSerializer fromString: (self client evaluateStringRemotely: ' ''a test string'' gtGsSerializedInspectorProxyAndSelect: ''Items''.').
	inspectorProxy gemstoneClient: self client.
	gsItemsPresentation := inspectorProxy gsPresentations second.
	
	self assert: (gsItemsPresentation cache includesKey: #displayValue).
	
	gsOtherPresentations := inspectorProxy gsPresentations reject: [ :aGsPresentation | aGsPresentation titleValue = 'Items' ].
	self assert: (gsOtherPresentations allSatisfy: [ :aGsPresentation | 
		(aGsPresentation cache includesKey: #displayValue) not ])
	
