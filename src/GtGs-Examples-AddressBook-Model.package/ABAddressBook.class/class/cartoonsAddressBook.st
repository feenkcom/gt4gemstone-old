accessing
cartoonsAddressBook
	| addressBook |

	addressBook := self new.
	addressBook label: 'Cartoons'.
	self cartoonsContactsIn: addressBook.
	^ addressBook