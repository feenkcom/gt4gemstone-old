*GtGs-Examples-AddressBook-Extensions-Pharo
isAddressBookFile

	^ self isFile and: [ self extension = 'adr' ]