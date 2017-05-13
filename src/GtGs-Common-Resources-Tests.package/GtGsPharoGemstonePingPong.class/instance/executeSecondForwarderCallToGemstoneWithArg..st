api - gemstone
executeSecondForwarderCallToGemstoneWithArg: anInteger
	"self halt."
	^ selfForwarder sendThirdForwarderCallToGemstoneWithArg: anInteger + 1