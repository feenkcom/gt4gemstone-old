*GtGs-Test-AddressBook-Extensions-Pharo
fromXML: aPPXmlElement
	|dict|
	dict := Dictionary newFrom: (aPPXmlElement elements collect: [ :each | each elements isEmpty
		ifTrue: [ each name asSymbol -> each nodes first asString ]
		ifFalse: [ each name asSymbol -> each ] ]).
	^ self new
		firstName: (dict at: #firstname ifAbsent: ['Unknown']);
		lastName: (dict at: #lastname ifAbsent: ['Unknown']);
		avatarId: (dict at: #avatar ifAbsent: [nil]);
		"avatar: (PNGReadWriter formFromFileNamed: ('data/icons/',(dict at: #avatar ifAbsent: [nil])));"
		description: (dict at: #description ifAbsent: ['Unknown']);
		address: (ABAddress new
			city: (dict at: #city ifAbsent: ['Gotham']);
			country: (dict at: #country ifAbsent: ['Narnia']);
			telephone: (ABTelephone fromXML: (dict at: #telephone)))