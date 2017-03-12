as yet unclassified
computePresentationsUsing: aSelector
	| aComposite presentation |

	aComposite := GtGsGlmCompositePresentation new.
	self perform: aSelector with: aComposite.
	aComposite presentations size = 0 ifTrue: [ ^ nil ].
	
	presentation := aComposite presentations first.
	presentation 
		updateForOwner: self;
		updateCache.
	self gsPresentations add: presentation. "Cache the presentation"
	^ self topezServer objectSerializer toString: presentation