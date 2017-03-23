reflective operations
computeGlamourPresentationFor: anObjectSelector using: aPresentationSelector withArguments: argumentsString
	|  presentation argumentsArray |

	argumentsArray := argumentsString evaluate.
	presentation := argumentsArray size = 0 
		ifTrue: [ (self perform: anObjectSelector) perform: aPresentationSelector ]
		ifFalse: [ (self perform: anObjectSelector) perform: aPresentationSelector withArguments: argumentsArray ].
	
	presentation 
		updateForOwner: self;
		updateCache.
	self gsPresentations add: presentation. "Cache the presentation"
	^ self topezServer objectSerializer toString: presentation