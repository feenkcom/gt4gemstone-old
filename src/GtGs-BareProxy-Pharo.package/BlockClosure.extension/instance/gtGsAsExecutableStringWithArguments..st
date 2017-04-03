*GtGs-BareProxy-Pharo
gtGsAsExecutableStringWithArguments: argumentsArray
	
	^  (String streamContents: [ :aStream | 
			aStream nextPutAll: self sourceNode formattedCode.
			(argumentsArray isNil or: [ argumentsArray isEmpty ]) 
				ifTrue: [ aStream nextPutAll: ' value' ]
				ifFalse: [ 
					aStream nextPutAll: ' valueWithArguments: '.
					aStream nextPutAll: argumentsArray gtGsBareAsBlockStringArgument ] ]) contents.