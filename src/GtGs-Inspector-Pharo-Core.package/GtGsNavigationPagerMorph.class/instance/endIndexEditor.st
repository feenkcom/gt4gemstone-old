ui building
endIndexEditor 
	| endIndexEditor |
	endIndexEditor := self
		textEntryLabel: 'End Index'
		get: #endIndexValue
		set: #chunkSizeInput:
		help: 'Change the end index' translated
		class: String.
	endIndexEditor hResizing: #rigid.
	endIndexEditor width: (self preferedFont widthOfString: '10000').
	^ endIndexEditor