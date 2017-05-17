building
compose
	super compose.
	self color: (Color blue muchDarker alpha: 0.4).
	self act: [ self gemstoneClient openRemoteSpotter ] 
		icon: FinderUI icon 
		entitled: 'Spotter'   