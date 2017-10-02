examples
exampleHolderSimple
	| holder |
	holder := ABAddressBookHolder new.
	holder addAddressBook: ABAddressBook pharoAddressBook.
	holder addAddressBook: ABAddressBook peopleAddressBook.
	^ holder 