initialization
personal: aString value: anotherString
	^ GLMBrick new
		hSpaceFill;
		marginTop: 4;
		marginBottom: 4;
		vShrinkWrap;
		addBrickBack: (GLMLabelBrick new
			text: aString;
			hSpaceFill: 20;
			maxWidth: 100;
			vShrinkWrap);
		addBrickBack: (GLMLabelBrick new
			text: anotherString;
			hSpaceFill: 80;
			vShrinkWrap);
		yourself