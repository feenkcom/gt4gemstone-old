printing
gtGsInspectorAContactOn: aComposite
	<gtInspectorPresentationOrder: 8>
	
	^ aComposite table
		title: [ 'Details' ];
		display: [ 
					{'name' -> self fullName.
					'city' -> self address city.
					'country' -> self address country.
					'telephone' -> self address telephone fullNumber } ];
		column: ['Detail'] evaluated: [ :anAssociation | anAssociation key ];
		column: ['Value'] evaluated: [ :anAssociation | anAssociation value];
		send: [ :anAssociation | anAssociation value ]
		