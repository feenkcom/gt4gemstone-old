examples
exampleHolderWithLargeAddressBook
	| holder |
	ABAddressBook reset.
	ABAddressBook default label: 'Big data'.
	ABContactGenerator
		addTo: ABAddressBook default
		contactSize: 1000000.

	holder := ABAddressBookHolder new.
	holder addAddressBook: (ABAddressBook new label: 'Feenk') initializeDefault.
	holder addAddressBook: (ABAddressBook new label: 'PharoDays') initializeDefault. 
	holder addAddressBook:  ABAddressBook default.
	^ holder