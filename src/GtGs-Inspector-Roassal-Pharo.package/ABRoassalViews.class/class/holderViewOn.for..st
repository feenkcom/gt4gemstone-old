building
holderViewOn: aBuilder for: aHolderInspectorProxy
	| remoteAddressBooks |
	
	remoteAddressBooks := aHolderInspectorProxy gtGsAsBareProxy addressBooks.
	
	aBuilder builder shape rectangle color: Color white.	
	aBuilder
		nodes: remoteAddressBooks gtGsAsCollectionFormatter elementsAsProxies 
		forEach: [ :anAddressBook | 
			aBuilder shape label
				color: Color gray;
				text: [ :aContact | aContact fullName].
			aBuilder nodes: anAddressBook contacts gtGsAsCollectionFormatter elementsAsProxies.
			aBuilder layout circle radius: 200 ].
	aBuilder flowLayout.
	
	^ aBuilder build