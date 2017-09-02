building
addressBookViewOn: aBuilder for: anAddressBookProxy
	
	aBuilder shape rectangle color: Color white.	
	aBuilder
		nodes: {anAddressBookProxy}
		forEach: [ :anAddressBook | 
			aBuilder shape shape: (RTBitmap new
				form: [ :aContact | 
					aContact avatarId 
						ifNil:  [ self formFromMorph: aContact fullName asMorph asReadOnlyMorph ]
						ifNotNil: [ aContact avatar scaledToSize: 140 @140  ] ]).
			"aBuilder shape label
				color: Color gray;
				text: [ :aContact | aContact fullName]."
			aBuilder nodes: anAddressBook contacts gtGsBareElementsAsProxies.
			aBuilder layout circle radius: 200 ].
	aBuilder flowLayout.
	^ aBuilder build