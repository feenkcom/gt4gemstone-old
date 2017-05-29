building
compose
	super compose.
	self color: (Color blue muchDarker alpha: 0.4).
	self dynamicActions: [ 
		self gemstoneClient globalToolbarActions ]