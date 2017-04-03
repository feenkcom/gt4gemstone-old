*GtGs-Inspector-Pharo-Core
morphBuilder: aClassName selector: aSelector

	^ self display: [ :anObject | 
		aClassName asClass perform: aSelector with: anObject ]