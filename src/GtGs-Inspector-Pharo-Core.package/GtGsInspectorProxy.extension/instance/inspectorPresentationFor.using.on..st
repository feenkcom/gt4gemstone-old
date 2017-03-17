*GtGs-Inspector-Pharo-Core
inspectorPresentationFor: anObjectSelector using: aPresentationSelector on: aCanvas

	^ (self 
		remoteInspectorPresentationFor: anObjectSelector 
		using: aPresentationSelector)
			ifNotNil: [ :aGsPresentation ||glamourPresentation| 
				self gsPresentations add: aGsPresentation. "Cache the presentation"
				glamourPresentation := aGsPresentation gtGsAsGlamourPresentationOn: aCanvas.
				self addExplicitNavigationBlockIn: glamourPresentation from: aGsPresentation.
				glamourPresentation ] 