private
applyFormattingTo: currentObjects
	| formattedValues |
	
	formattedValues := OrderedCollection new: (currentObjects size).
	currentObjects withIndexDo: [ :each :index |
		formattedValues 
			at: index
			put: (self oopComputationBlock value: each) -> (self formatBlock value: each) ].
	^ formattedValues
	