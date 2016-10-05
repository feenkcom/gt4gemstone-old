private
applyFormattingTo: currentObjects
	| formattedValues |
	
	formattedValues := OrderedCollection new: (currentObjects size).
	currentObjects do: [ :each |
		formattedValues add: 
			(self oopComputationBlock value: each) -> 
			(self formatBlock value: each) ].
	^ formattedValues
	