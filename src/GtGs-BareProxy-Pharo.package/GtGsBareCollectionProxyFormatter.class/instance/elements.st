actions
elements
	
	^ self shouldUseSTON 
		ifTrue: [ self executeCommandWithSTONSerialization ]
		ifFalse: [ self executeCommandWithStringSerialization ]