as yet unclassified
glamourPresentationUsing: aSelector on: aCanvas

	^ (self remotePresentationUsing: aSelector)
		ifNotNil: [ :aGsPresentation ||glamourPresentation| 
			self gsPresentations add: aGsPresentation. "Cache the presentation"
			glamourPresentation := aGsPresentation asGlamourPresentationOn: aCanvas.
			self addExplicitNavigationBlockIn: glamourPresentation from: aGsPresentation.
			glamourPresentation ] 