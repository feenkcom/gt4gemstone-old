private
computationStringFor: aSelector withArguments: argumentsArray
	
	^ String streamContents: [ :aStream | 
		aStream nextPutAll: ' [ '.
		aStream nextPutAll: self gtGsAsBlockStringArgument.
		(argumentsArray isNil or: [ argumentsArray isEmpty ])  
			ifTrue: [ aStream nextPutAll: ' perform: ', aSelector ]
			ifFalse: [ 
				aStream nextPutAll: ' perform: ', aSelector, ' withArguments: '.
				argumentsArray gtGsAsStringArgumentsArrayOn: aStream ].
		aStream nextPutAll: ' ] value ' ]