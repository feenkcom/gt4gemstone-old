*GtGs-Inspector-Core
gtGsInspectorItemsIn: composite
	<gtInspectorPresentationOrder: 1>
	
	^ (composite table)
		title: 'Items';
		display: [ | aCollection |
  			aCollection := Array new.
			self associationsDo: [ :assn | aCollection add: assn ].
			aCollection ];
		children: [ :anAssociation | 
			(anAssociation value isDictionary) 
				ifTrue: [ anAssociation value associations ] 
				ifFalse: [ #() ] ];
		column: [ 'Key' ] 
			evaluated: [ :anAssociation | anAssociation key gtGsInspectorName ];
		column: [ 'Value' ]
			evaluated: [ :anAssociation | anAssociation value gtGsInspectorName ];
		send: [ :anAssociation | 
			anAssociation value ]