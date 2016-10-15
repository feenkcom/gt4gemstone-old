*GtGs-Examples-AddressBook-Extensions-Pharo
spotterPreviewIn: aComposite
	<spotterPreview: 10>
	
	aComposite list
		title: 'People';
		display: #yourself;
		format: [ :contact | GTSpotterItemBrick new text: contact fullName; disable ];
		entity: self contacts