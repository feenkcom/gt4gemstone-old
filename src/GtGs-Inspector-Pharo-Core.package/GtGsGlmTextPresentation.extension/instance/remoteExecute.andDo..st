*GtGs-Inspector-Pharo-Core
remoteExecute: aString andDo: aBlock
	
	self 
		executeRemotely: #executeInGemstoneContext: 
		withArguments: { aString }
		andDo: aBlock.