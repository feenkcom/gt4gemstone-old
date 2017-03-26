*GtGs-Inspector-Pharo-Core
glamourPresentationFor: anObjectSelector using: aPresentationSelector withArguments: argumentsArray

	^ (self 
		remoteGlamourPresentationFor: anObjectSelector 
		using: aPresentationSelector 
		withArguments: argumentsArray gtGsBareAsBlockStringArgument)
			ifNotNil: [ :aGsPresentation ||glamourPresentation| 
				self gsPresentations add: aGsPresentation. "Cache the presentation"
				glamourPresentation := aGsPresentation gtGsAsGlamourPresentation.
				self addExplicitNavigationBlockIn: glamourPresentation from: aGsPresentation.
				glamourPresentation ] 