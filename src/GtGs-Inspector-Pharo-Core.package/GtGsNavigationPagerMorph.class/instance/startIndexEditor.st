ui building
startIndexEditor 
	| startIndexEditor |
	startIndexEditor := self
		textEntryLabel: 'Start Index'
		get: #startIndexValue
		set: #chunkSizeInput:
		help: 'Change the start index' translated
		class: String.
	startIndexEditor hResizing: #rigid.
	startIndexEditor width: (self preferedFont widthOfString: '10000').
	^ startIndexEditor