building
holderViewOn: aBuilder for: aHolderProxy
	
	aBuilder shape rectangle color: Color white.	
	aBuilder
		nodes: aHolderProxy addressBooks gtGsAsCollectionFormatter elementsAsProxies 
		forEach: [ :anAddressBook | 
			aBuilder shape label
				color: Color gray;
				text: [ :aContact | aContact fullName].
			aBuilder nodes: anAddressBook contacts gtGsAsCollectionFormatter elementsAsProxies.
			aBuilder layout circle radius: 200 ].
	aBuilder flowLayout.
	^ aBuilder build