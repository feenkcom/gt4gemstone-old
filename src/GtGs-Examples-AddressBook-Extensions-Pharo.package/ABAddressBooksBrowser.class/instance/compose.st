as yet unclassified
compose
	| addressBookBrowser |
	
	addressBookBrowser := GLMTabulator new.
	addressBookBrowser 
		row: [ :aRow |
			aRow column: #holder.
			aRow column: #addressBook ];
		row: #contact.
	addressBookBrowser transmit 
		to: #holder; 	
		andShowDynamic: [ :aComposite :aHolder |
			aHolder gtGsInspectorAddressBooksIn: aComposite ].
	addressBookBrowser transmit 
		from: #holder;
		to: #addressBook; 
		andShowDynamic: [ :aComposite :anAddressBook |
			anAddressBook gtGsInspectorAContactsOn: aComposite ].
	addressBookBrowser transmit 
		from: #addressBook;
		to: #contact;
		andShowDynamic: [ :aComposite :aContact |
			aContact gtGsInspectorAContactOn: aComposite.
			aContact gtGsInspectorAPreviewOn: aComposite ].
		
	self custom: addressBookBrowser.