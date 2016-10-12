*GtGs-Test-AddressBook-Extensions-Pharo
spotterPreviewOldIn: aComposite
	<spotterPreview: 10>
	
	aComposite table
		title: 'Preview';
		display: [ :anObject |
			{ 
				'name' -> self fullName.
				'city' -> self address city.
				'country' -> self address country.
				'telephone' -> self address telephone fullNumber } ];
		column: 'Detail'
			evaluated: #key
			styled: [ :aBrick | aBrick 
					marginRight: 15; 
					height: 30; 
					textPosition: #rightCenter;  
					textColor: Color lightGray ];
		column: 'Value'
			evaluated: #value
			styled: [ :aBrick | aBrick 
					marginLeft: 15; 
					height: 30 ];
		entity: self.