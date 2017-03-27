accessing
remoteFormat: aBlock
	"I specify a block used to format elements on the remote stone. This block is passed
	to the remote stone as a string so it must not access any values from its outer context.
	I must have only one parameter. I will be executed with each collection element
	as a parameter."
	
	remoteFormatBlock := aBlock