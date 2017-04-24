private
findSelectorFor: aString
	| possibleSelector |
	possibleSelector := self topezServer topezClientForwarder
   		perform: #'findPossibleSelectorFor:'
    	with: aString.
	^ possibleSelector 
		ifNotNil: [ Symbol _existingWithAll: possibleSelector ]