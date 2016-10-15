actions
loadDefaultData 

	ABAddressBook default contacts add: (
	ABContact new
		firstName: 'Andrei';
		lastName: 'Chis';
		description: (ABContactGenerator loremIpsum: 1024);
		address: (
			ABAddress new
				city: 'Bern';
				country: 'Switzerland';
				telephone: (ABTelephone  new prefix: '41-7'; number: '12345678'))).
				
	ABAddressBook default contacts add: (
	ABContact new
		firstName: 'Aliaksei';
		lastName: 'Syrel';
		description: (ABContactGenerator loremIpsum: 1024);
		address: (
			ABAddress new
				city: 'Bern';
				country: 'Switzerland';
				telephone: (ABTelephone  new  prefix: '41-7'; number: '11223344'))).
				
	ABAddressBook default contacts add: (
	ABContact new
		firstName: 'Tudor';
		lastName: 'Girba';
		description: (ABContactGenerator loremIpsum: 1024);
		address: (
			ABAddress new
				city: 'Bern';
				country: 'Switzerland';
				telephone: (ABTelephone  new prefix: '41-7'; number: '11224455'))).
				
				
	ABAddressBook default contacts add: (
	ABContact new
		firstName: 'Juraj';
		lastName: 'Kubelka';
		description: (ABContactGenerator loremIpsum: 1024);
		address: (
			ABAddress new
				city: 'Santiago';
				country: 'Chile';
				telephone: (ABTelephone  new prefix: '56-5'; number: '54321345'))).
				
	ABAddressBook default contacts add: (
	ABContact new
		firstName: 'Stefan';
		lastName: 'Reichhart';
		description: (ABContactGenerator loremIpsum: 1024);
		address: (
			ABAddress new
				city: 'Bern';
				country: 'Switzerland';
				telephone: (ABTelephone  new prefix: '33-5'; number: '55326449'))).
				
	ABAddressBook default contacts add: (
	ABContact new
		firstName: 'John';
		lastName: 'Doe';
		description: (ABContactGenerator loremIpsum: 1024);
		address: (
			ABAddress new
				city: 'Lille';
				country: 'France';
				telephone: (ABTelephone  new prefix: '33-5'; number: '32455555'))).
			
		