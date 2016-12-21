api - pharo
sendSecondForwarderCallToGemstoneWithArg: anInteger
	self halt.
	^ self gemstoneClient
		executeRemotely: #executeSecondForwarderCallToGemstoneWithArg:
		on: self selfOopType
		withArguments: {anInteger+1}.