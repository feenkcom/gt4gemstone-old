*GtGs-Inspector-Roassal-Pharo
viewBuilder: aClassName selector: aSelector
	self painting: [ :aView :anObject |
		aClassName asClass perform: aSelector withArguments: { aView . anObject } ]