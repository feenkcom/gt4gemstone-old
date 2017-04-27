tools
findSelectorFor: aString
	| possibleSelector |
	possibleSelector := self topezClientForwarder
   		perform: #'findPossibleSelectorFor:'
    	with: aString.
	^ possibleSelector 
		ifNotNil: [ Symbol _existingWithAll: possibleSelector ]