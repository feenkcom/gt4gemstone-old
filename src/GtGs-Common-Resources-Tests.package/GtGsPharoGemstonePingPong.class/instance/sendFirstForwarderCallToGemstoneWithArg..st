api - pharo
sendFirstForwarderCallToGemstoneWithArg: anInteger

	^ self gemstoneClient
		executeRemotely: #executeFirstForwarderCallToGemstoneWithArg:
		on: self selfOopType
		withArguments: {anInteger}.