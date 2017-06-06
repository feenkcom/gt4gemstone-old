api - pharo
sendSecondForwarderCallToGemstoneWithArg: anInteger
	"self halt."
	^ self gemstoneClient
		send: #executeSecondForwarderCallToGemstoneWithArg:
		to: self selfOopType
		withArgs: {anInteger+1}.