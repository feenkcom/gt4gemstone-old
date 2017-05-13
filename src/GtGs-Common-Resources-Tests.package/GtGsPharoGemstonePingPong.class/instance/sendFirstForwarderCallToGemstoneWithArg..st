api - pharo
sendFirstForwarderCallToGemstoneWithArg: anInteger

	^ self gemstoneClient
		send: #executeFirstForwarderCallToGemstoneWithArg:
		to: self selfOopType
		withArgs: {anInteger}.