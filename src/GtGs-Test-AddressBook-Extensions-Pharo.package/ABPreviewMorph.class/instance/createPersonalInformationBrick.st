initialization
createPersonalInformationBrick
	^ GLMBandBrick new
		margin: 20;
		vShrinkWrap;
		hSpaceFill;
		addBrickBack: (self personal: 'Country' value: self contact address country);
		addBrickBack: (self personal: 'City' value: self contact address city);
		addBrickBack: (self personal: 'Telephone' value: self contact address telephone fullNumber);
		yourself