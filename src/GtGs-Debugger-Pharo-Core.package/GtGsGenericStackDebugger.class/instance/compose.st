building
compose
	super compose.
	self color: (Color magenta muchDarker alpha: 0.4). 
	self dynamicActions: [ 
		self gemstoneClient globalToolbarActions ]