actions - proxy
performStringRemotely: aString withRunner: anOopType
	
	^ self 
		send: #performString:
		to: anOopType 
		withArgs: { aString }.

		

