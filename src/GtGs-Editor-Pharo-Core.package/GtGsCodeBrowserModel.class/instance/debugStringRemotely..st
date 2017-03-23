actions - remote
debugStringRemotely: aString

	^ self gemstoneClient 
		debugStringRemotely: aString 
		inContext: self codeExecutionOopType