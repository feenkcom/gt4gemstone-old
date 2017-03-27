actions - proxy
evaluateStringRemotely: aString withRunner: anOopType
	
	^ self 
		send: #evaluateString:
		to: anOopType 
		withArgs: { aString }.

		

