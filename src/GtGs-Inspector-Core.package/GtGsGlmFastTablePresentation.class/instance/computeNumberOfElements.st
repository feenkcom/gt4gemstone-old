callbacks
computeNumberOfElements

	displayObjects 
		ifNil: [ displayObjects := self displayBlock value ].
	numberOfElements := displayObjects size.
	^ self topezServer objectSerializer toString: numberOfElements