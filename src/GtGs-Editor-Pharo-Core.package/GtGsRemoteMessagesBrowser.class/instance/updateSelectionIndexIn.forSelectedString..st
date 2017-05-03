private
updateSelectionIndexIn: aTextPresentation forSelectedString: aSelectionString
	| searchRegex targetText firstRage secondRange |
	
	searchRegex := self convertToRegex: aSelectionString.
	targetText := aTextPresentation formatedDisplayValue.
	firstRage := self findNext: searchRegex startingAt: 1 in: targetText.
	"If the first match is at the beginning of the method it means that it matched the selector name.
	As we want to match the actual sender of the selector and not the method name we look for the next match."
	firstRage first = 1 ifTrue: [
		 secondRange := self findNext: searchRegex startingAt: firstRage last in: targetText ].
	aTextPresentation selectionInterval: (secondRange ifNil: [ firstRage ])