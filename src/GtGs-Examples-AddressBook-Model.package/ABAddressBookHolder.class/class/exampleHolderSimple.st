examples
exampleHolderSimple
	| holder |
	holder := ABAddressBookHolder new.
	holder addAddressBook: (ABAddressBook new label: 'Feenk') initializeDefault.
	holder addAddressBook: (ABAddressBook new label: 'PharoDays') initializeDefault.
	^ holder 