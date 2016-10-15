*GtGs-Examples-AddressBook-Extensions-Pharo
loadFromFile: aPath
	|newContacts|
	
	newContacts := ((XMLDOMParser parse: aPath asFileReference) // 'contact') 
		collect: [ :each | ABContact fromXML: each ].
	self addContacts: newContacts.