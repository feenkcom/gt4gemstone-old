*GtGs-Test-AddressBook-Extensions-Pharo
contactsFromFile 

	^ ((XMLDOMParser parse: self) // 'contact')
			collect: [ :each | ABContact fromXML: each ]