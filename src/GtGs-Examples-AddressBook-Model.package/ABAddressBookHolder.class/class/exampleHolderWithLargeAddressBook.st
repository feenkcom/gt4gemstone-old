examples
exampleHolderWithLargeAddressBook
	| holder |
	ABAddressBook reset.
	ABAddressBook default label: 'Big data'.
	ABContactGenerator
		addTo: ABAddressBook default
		contactSize: 1000000.

	holder := ABAddressBookHolder new.
	holder addAddressBook: (ABAddressBook new label: 'Feenk') loadDefaultContacts.
	holder addAddressBook: (ABAddressBook new label: 'PharoDays') loadDefaultContacts. 
	holder addAddressBook:  ABAddressBook default.
	^ holder