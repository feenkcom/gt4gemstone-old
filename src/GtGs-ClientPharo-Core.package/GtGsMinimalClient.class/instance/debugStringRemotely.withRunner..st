actions - proxy
debugStringRemotely: aString withRunner: anOopType
	
	^ self 
		send: #debugString:
		to: anOopType 
		withArgs: { aString }
