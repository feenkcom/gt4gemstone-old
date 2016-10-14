*GtGs-Inspector-Core
gtGsIsGemstone
	^ (Smalltalk includesKey: #'SessionTemps') and: [ 
		(Smalltalk at: #'SessionTemps')  respondsTo: #current ]