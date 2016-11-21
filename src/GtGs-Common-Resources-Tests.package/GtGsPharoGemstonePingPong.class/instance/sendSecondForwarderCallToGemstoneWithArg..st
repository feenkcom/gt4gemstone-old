api - pharo
sendSecondForwarderCallToGemstoneWithArg: anInteger

	^ self gemstoneClient
		executeRemotely: #executeSecondForwarderCallToGemstoneWithArg:
		on: self selfOopType
		withArguments: {anInteger+1}.