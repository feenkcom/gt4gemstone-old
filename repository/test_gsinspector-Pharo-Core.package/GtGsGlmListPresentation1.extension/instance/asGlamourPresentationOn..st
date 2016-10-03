*test_gsinspector-Pharo-Core
asGlamourPresentationOn: aComposite 

	^ aComposite list 
		title: [ 
			self gemstoneClient session
				send: #value
				to: self titleBlockOopType ];
		display: [ 
			self gemstoneClient objectSerializer fromString: 
				(self gemstoneClient session
					send: #value
					to: self displayBlockOopType) ];
		format: [ :anAssociation | 
			anAssociation value ];
		send: [ :anAssociation ||serializedProxy|
			serializedProxy := self gemstoneClient session executeString: 'GtGsInspectorProxy1 serializeInstance: (GtGsInspectorProxy1 forOop: ', anAssociation key, ' )'.
			self gemstoneClient objectSerializer fromString: serializedProxy ]