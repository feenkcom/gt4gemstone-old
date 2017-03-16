*GtGs-Inspector-Pharo-Core
gtGsAsExecutableStringWithArguments: argumentsArray
	
	^  (String streamContents: [ :aStream | 
			aStream nextPutAll: self sourceNode formattedCode.
			(argumentsArray isNil or: [ argumentsArray isEmpty ]) 
				ifTrue: [ aStream nextPutAll: ' value ' ]
				ifFalse: [ 
					aStream nextPutAll: ' valueWithArguments: '.
					argumentsArray gtGsAsStringArgumentsArrayOn: aStream ] ]) contents.