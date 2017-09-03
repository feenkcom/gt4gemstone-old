reflective operations
computeInspectorPresentationFor: anObjectSelector using: aPresentationSelector
	| aComposite presentation |

	aComposite := GtGsGlmCompositePresentation new.
	(self perform: anObjectSelector) perform: aPresentationSelector with: aComposite.
	aComposite presentations size = 0 ifTrue: [ 
		^ self topezServer objectSerializer toString: nil ].
	
	presentation := aComposite presentations first.
	presentation 
		updateForOwner: self;
		updateCache.
	self gsPresentations add: presentation. "Cache the presentation"
	^ self topezServer objectSerializer toString: presentation