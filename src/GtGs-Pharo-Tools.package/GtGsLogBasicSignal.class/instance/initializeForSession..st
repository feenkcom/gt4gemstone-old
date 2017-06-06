initialization
initializeForSession: aGemstoneSession
		
	self properties at: #gemstoneSession put: aGemstoneSession.
	self properties at: #sessionHash put: aGemstoneSession identityHash.
	self properties at: #sessionPrintString put: ( String 
		streamContents: [ :aStream | aGemstoneSession printString,  ' [ ', aGemstoneSession identityHash asString , ' ]' ]). 