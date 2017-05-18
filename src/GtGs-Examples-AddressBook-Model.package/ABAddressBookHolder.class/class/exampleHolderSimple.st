examples
exampleHolderSimple
	| holder |
	holder := ABAddressBookHolder new.
	holder addAddressBook: (ABAddressBook new label: 'Feenk') loadDefaultContacts.
	holder addAddressBook: (ABAddressBook new label: 'PharoDays') loadDefaultContacts.
	^ holder 