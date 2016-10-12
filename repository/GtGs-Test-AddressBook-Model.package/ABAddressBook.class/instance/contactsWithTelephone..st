filtering
contactsWithTelephone: aNumber
	^self contacts select: [ :each | each address telephone number = aNumber ] 