actions api
performStringRemotely: aString inContext: anOopType
	
	^ self 
		send: #performString: 
		to: anOopType 
		withArgs: { aString }.

		

