actions - remote
performStringRemotely: aString

	^ self gemstoneClient 
		performStringRemotely: aString 
		inContext: self codeExecutionOopType