as yet unclassified
doesNotUnderstand: aMessage
	self gtGsIsGemstone ifTrue: [ 
		^ super doesNotUnderstand: aMessage ].
	
	^ (self remotePresentationUsing: aMessage selector)
		ifNil: [ super doesNotUnderstand: aMessage  ] 
		ifNotNil: [ :aGsPresentation ||glamourPresentation| 
			self gsPresentations add: aGsPresentation. "Cache the presentation"
			glamourPresentation := aGsPresentation asGlamourPresentationOn: aMessage arguments first.
			self addExplicitNavigationBlockIn: glamourPresentation from: aGsPresentation.
			^ glamourPresentation ] 