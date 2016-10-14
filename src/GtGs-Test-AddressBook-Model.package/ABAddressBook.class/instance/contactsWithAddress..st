filtering
contactsWithAddress: anAddress
	^self contacts select: [ :each | each address = anAddress ] 