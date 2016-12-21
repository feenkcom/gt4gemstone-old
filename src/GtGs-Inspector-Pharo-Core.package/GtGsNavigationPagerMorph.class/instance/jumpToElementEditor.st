testing
jumpToElementEditor 
	| endIndexEditor |
	endIndexEditor := self
		textEntryLabel: 'Jump to element'
		get: nil
		set: #jumpToIndex:
		help: 'Jump to element' translated
		class: String.
	endIndexEditor hResizing: #rigid.
	endIndexEditor width: (self preferedFont widthOfString: '10000').
	^ endIndexEditor