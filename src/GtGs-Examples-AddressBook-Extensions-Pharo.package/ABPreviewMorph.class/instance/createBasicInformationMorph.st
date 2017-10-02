initialization
createBasicInformationMorph
	^ GLMBandBrick new
		hSpaceFill;
		useHorizontalLinearLayout;
		addBrickBack: (self newImageMorph
			normalImage: (self avaratFor: self contact);
			hShrinkWrap;
			vShrinkWrap;
			marginLeft: 10;
			marginTop: 10;
			maxHeight: 100;
			maxWidth: 100);
		addBrickBack:(self newInformationMorph
			hSpaceFill;
			marginLeft: 10;
			marginTop: 2;
			addBrickBack: (GLMLabelBrick new
				text: self contact fullName;
				fontSize: 25;
				marginLeft: 5;
				hSpaceFill;
				vShrinkWrap);
			addBrickBack: (GLMRubTextAreaBrick new
				text: (self contact description size > 200
					ifTrue: [ (self contact description first: 200), '...' ]
					ifFalse: [ self contact description ]);
				hSpaceFill;
				vShrinkWrap);
			yourself);
		yourself