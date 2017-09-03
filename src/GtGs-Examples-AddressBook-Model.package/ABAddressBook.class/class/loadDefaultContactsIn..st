actions
loadDefaultContactsIn: anAddressBook

	anAddressBook contacts add: (
	ABContact new
		firstName: 'Andrei';
		lastName: 'Chis';
		description: (ABContactGenerator loremIpsum);
		avatarId: 'andrei.png';
		address: (
			ABAddress new
				city: 'Bern';
				country: 'Switzerland';
				telephone: (ABTelephone  new prefix: '41-7'; number: '12345678'))).
				
	anAddressBook contacts add: (
	ABContact new
		firstName: 'Aliaksei';
		lastName: 'Syrel';
		description: (ABContactGenerator loremIpsum);
		avatarId: 'alex.png';
		address: (
			ABAddress new
				city: 'Bern';
				country: 'Switzerland';
				telephone: (ABTelephone  new  prefix: '41-7'; number: '11223344'))).
				
	anAddressBook contacts add: (
	ABContact new
		firstName: 'Tudor';
		lastName: 'Girba';
		description: (ABContactGenerator loremIpsum);
		avatarId: 'tudor.png';
		address: (
			ABAddress new
				city: 'Bern';
				country: 'Switzerland';
				telephone: (ABTelephone  new prefix: '41-7'; number: '11224455'))).
				
				
	anAddressBook contacts add: (
	ABContact new
		firstName: 'Juraj';
		lastName: 'Kubelka';
		description: (ABContactGenerator loremIpsum);
		avatarId: 'juraj.png';
		address: (
			ABAddress new
				city: 'Santiago';
				country: 'Chile';
				telephone: (ABTelephone  new prefix: '56-5'; number: '54321345'))).
				
	anAddressBook contacts add: (
	ABContact new
		firstName: 'Stefan';
		lastName: 'Reichhart';
		avatarId: 'stefan.png';
		description: (ABContactGenerator loremIpsum);
		address: (
			ABAddress new
				city: 'Bern';
				country: 'Switzerland';
				telephone: (ABTelephone  new prefix: '33-5'; number: '55326449'))).
				
	anAddressBook contacts add: (
	ABContact new
		firstName: 'John';
		lastName: 'Doe';
		avatarId: 'john.png';
		description: (ABContactGenerator loremIpsum);
		address: (
			ABAddress new
				city: 'Lille';
				country: 'France';
				telephone: (ABTelephone  new prefix: '33-5'; number: '32455555'))).
			
		