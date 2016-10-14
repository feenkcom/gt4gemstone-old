comparing
= anObject

	self == anObject ifTrue: [ ^ true ].
	self class = anObject class ifFalse: [ ^ false ].
	^ city = anObject city and: [ country = anObject country ]