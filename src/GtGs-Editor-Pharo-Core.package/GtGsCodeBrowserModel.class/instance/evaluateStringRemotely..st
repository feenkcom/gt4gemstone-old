actions - remote
evaluateStringRemotely: aString

	^ self gemstoneClient 
		evaluateStringRemotely: aString 
		inContext: self codeExecutionOopType