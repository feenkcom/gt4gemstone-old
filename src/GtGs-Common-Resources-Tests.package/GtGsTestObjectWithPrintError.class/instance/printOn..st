printing
printOn: aStream
	self shouldTriggerPrintingError ifTrue: [ 1/0 ].
	^ super printOn: aStream
	