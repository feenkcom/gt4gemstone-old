as yet unclassified
performGemstoneResult: processResult
	
	processResult size = 1 
		ifTrue: [ self perform: processResult first ].
	processResult size > 1
		ifTrue: [ self 
			perform: processResult first 
			withEnoughArguments: processResult copyWithoutFirst ].