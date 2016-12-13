updating
updatePresentations
	| aComposite |
	aComposite := GtGsGlmCompositePresentation new.
	targetObject 
		gtGsInspectorPresentationsIn: aComposite
		inContext: self.
	
	aComposite presentations do: [ :each | 
		each 
			proxyOwner: self;
			updateForwarder;
			updateUninitializedBlocks;
			updateCacheBasic ].
	aComposite presentations size > 0 ifTrue: [
		 aComposite presentations first updateCache ].

	presentations := aComposite presentations