printing
gtContactOn: aComposite
	<gtInspectorPresentationOrder: 14>
	<gtGsInspectorPresentationOrder: 14>
	
	^ aComposite table
		title: [ 'Details' ];
		display: [ 
					{'name' -> self fullName.
					'city' -> self address city.
					'country' -> self address country.
					'telephone' -> self address telephone fullNumber } ];
		column: 'Detail' evaluated: #key;
		column: 'Value' evaluated: #value;
		send: #value
		