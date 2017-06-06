as yet unclassified
addTo: anAddressBook contactSize: anInteger

	1 to: anInteger do: [ :anIndex |
		anAddressBook contacts add: (
			ABContact new
				firstName: 'John';
				lastName: 'Doe', anIndex asString;
				description: (ABContactGenerator loremIpsum);
				address: (
					ABAddress new
						city: 'Bern';
						country: 'Switzerland';
						telephone: (ABTelephone new 
							prefix: '41-7'; 
							number: '12345678'))) ]

	