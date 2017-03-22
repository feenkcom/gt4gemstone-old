actions - proxy
debugStringRemotely: aString inContext: aContextArgument
	
	^ self 
		send: #debugString:inContext:
		to: self todeServerOopType  
		withArgs: { aString . aContextArgument }