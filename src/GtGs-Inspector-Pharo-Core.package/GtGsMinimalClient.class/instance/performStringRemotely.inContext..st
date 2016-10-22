actions api
performStringRemotely: aString inContext: anOopType
	
	^ self session 
		send: #performString: 
		to: anOopType 
		withArgs: { aString }.

		

