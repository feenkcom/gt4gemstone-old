*GtGs-Inspector-Pharo-Core
iconIdBlock: aBlock
	self flag: #gscompatibility.
	self icon: [ :anObject | 
		Smalltalk ui icons iconNamed: (aBlock cull: anObject) ]