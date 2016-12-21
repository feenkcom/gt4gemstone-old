ui building
spacer: hsize
	^ (Morph new) 
		color: Color transparent; 
		extent: hsize @ (self preferedFont height + 8); 
		yourself