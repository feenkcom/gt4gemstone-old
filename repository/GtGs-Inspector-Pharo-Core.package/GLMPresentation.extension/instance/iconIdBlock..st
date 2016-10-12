*GtGs-Inspector-Pharo-Core
iconIdBlock: aBlock

	self icon: [ :anObject | 
		Smalltalk ui icons iconNamed: (aBlock cull: anObject) ]