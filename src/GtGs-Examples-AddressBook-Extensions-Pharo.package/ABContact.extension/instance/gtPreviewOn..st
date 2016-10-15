*GtGs-Examples-AddressBook-Extensions-Pharo
gtPreviewOn: aComposite
	<gtInspectorPresentationOrder: 11>
	
	^ aComposite morph 
		title: 'Preview';
		display: [ ABPreviewMorph new contact: self ]
		