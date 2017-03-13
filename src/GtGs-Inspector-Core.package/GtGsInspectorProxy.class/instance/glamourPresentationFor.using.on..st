as yet unclassified
glamourPresentationFor: anObjectSelector using: aPresentationSelector on: aCanvas

	^ (self remotePresentationFor: anObjectSelector using: aPresentationSelector)
		ifNotNil: [ :aGsPresentation ||glamourPresentation| 
			self gsPresentations add: aGsPresentation. "Cache the presentation"
			glamourPresentation := aGsPresentation asGlamourPresentationOn: aCanvas.
			self addExplicitNavigationBlockIn: glamourPresentation from: aGsPresentation.
			glamourPresentation ] 