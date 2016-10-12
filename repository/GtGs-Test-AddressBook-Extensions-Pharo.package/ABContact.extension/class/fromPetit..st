*GtGs-Test-AddressBook-Extensions-Pharo
fromPetit: aPPXmlElement
	|dict|
	dict := Dictionary newFrom: (aPPXmlElement elements collect: [ :each | each elements isEmpty
		ifTrue: [ each name localName asSymbol -> each children first data ]
		ifFalse: [ each name localName asSymbol -> each ] ]).
	^ self new
		firstName: (dict at: #firstname ifAbsent: ['Unknown']);
		lastName: (dict at: #lastname ifAbsent: ['Unknown']);
		avatarId: (dict at: #avatar ifAbsent: [nil]);
		"avatar: (PNGReadWriter formFromFileNamed: ('data/icons/',(dict at: #avatar ifAbsent: [nil])));"
		description: (dict at: #description ifAbsent: ['Unknown']);
		address: (ABAddress new
			city: (dict at: #city ifAbsent: ['Gotham']);
			country: (dict at: #country ifAbsent: ['Narnia']);
			telephone: (ABTelephone fromPetit: (dict at: #telephone)))