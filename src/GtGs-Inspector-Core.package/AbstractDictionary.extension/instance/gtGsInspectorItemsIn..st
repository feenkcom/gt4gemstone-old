*GtGs-Inspector-Core
gtGsInspectorItemsIn: composite

	^ (composite table)
		title: 'Items';
		display: [ self associations ];
		children: [ :anAssociation | 
			(anAssociation value isDictionary) 
				ifTrue: [ anAssociation value associations ] 
				ifFalse: [ #() ] ];
		column: 'Key' 
			evaluated: [ :anAssociation | anAssociation key gtGsInspectorName ];
		column: 'Value' 
			evaluated: [ :anAssociation | anAssociation value gtGsInspectorName ];
		send: [ :anAssociation | 
			anAssociation value ]