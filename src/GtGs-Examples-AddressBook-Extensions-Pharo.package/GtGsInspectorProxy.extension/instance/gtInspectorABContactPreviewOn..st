*GtGs-Examples-AddressBook-Extensions-Pharo
gtInspectorABContactPreviewOn: aComposite
	<gtInspectorPresentationOrder: 9>
	
	^ aComposite morph 
		title: 'Preview';
		display: [ ABPreviewMorph new contact: (self gemstoneClient bareProxyForOopType: self targetObjectOopType ofType: GtGsBareProxy) ];
		when: [ self title beginsWith: 'anABContact(' ]