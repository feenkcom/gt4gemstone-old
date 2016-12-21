ui building
stopIndexEditor 
	| endIndexEditor |
	endIndexEditor := self
		textEntryLabel: 'Stop Index'
		get: #stopIndexValue
		set: #chunkSizeInput:
		help: 'Change the end index' translated
		class: String.
	endIndexEditor hResizing: #rigid.
	endIndexEditor width: (self preferedFont widthOfString: '10000').
	^ endIndexEditor