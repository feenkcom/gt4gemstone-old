reflective operations
inspectorPresentationFor: anObjectSelector using: aPresentationSelector on: aCanvas

	^ (self 
		remoteInspectorPresentationFor: anObjectSelector 
		using: aPresentationSelector)
			ifNotNil: [ :aGsPresentation ||glamourPresentation| 
				self gsPresentations add: aGsPresentation. "Cache the presentation"
				glamourPresentation := aGsPresentation asGlamourPresentationOn: aCanvas.
				self addExplicitNavigationBlockIn: glamourPresentation from: aGsPresentation.
				glamourPresentation ] 