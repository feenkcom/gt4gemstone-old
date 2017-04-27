private
updateSelectionIn: aTextPresentation forString: aSelectionString
	| findRegex |
	
	findRegex := self convertToRegex: aSelectionString.
	aTextPresentation selectionInterval: (self 
		findRegex: findRegex
		in: aTextPresentation text)