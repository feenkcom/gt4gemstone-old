as yet unclassified
compose
| addressBookBrowser |
	
addressBookBrowser := GLMTabulator new.
addressBookBrowser 
	row: [ :aRow |
		aRow column: #addressBooks.
		aRow column: #contacts ];
	row: #details.
addressBookBrowser transmit 
	to: #addressBooks; 	
	andShowDynamic: [ :aComposite :aHolder |
		aHolder gtGsInspectorAddressBooksIn: aComposite ].
addressBookBrowser transmit 
	from: #addressBooks;
	to: #contacts; 
	andShowDynamic: [ :aComposite :anAddressBook |
		anAddressBook gtGsInspectorAContactsOn: aComposite ].
addressBookBrowser transmit 
	from: #contacts;
	to: #details;
	andShowDynamic: [ :aComposite :aContact |
		aContact gtGsInspectorCContactOn: aComposite.
		aContact gtGsInspectorCPreviewOn: aComposite ].
		
self custom: addressBookBrowser.