actions - proxy
performStringRemotely: aString inContext: aContextArgument
	
	^ self 
		send: #evaluateString:inContext: 
		to: self todeServerOopType 
		withArgs: { aString . aContextArgument }.

		

