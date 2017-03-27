actions - proxy
performStringRemotely: aString withRunner: anOopType
	
	^ self 
		send: #evaluateString:
		to: anOopType 
		withArgs: { aString }.

		

