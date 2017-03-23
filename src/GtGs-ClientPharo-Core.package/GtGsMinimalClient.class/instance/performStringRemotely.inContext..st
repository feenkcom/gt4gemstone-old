actions - proxy
performStringRemotely: aString inContext: aContextArgument
	
	^ self 
		send: #performString:inContext: 
		to: self todeServerOopType 
		withArgs: { aString . aContextArgument }.

		

