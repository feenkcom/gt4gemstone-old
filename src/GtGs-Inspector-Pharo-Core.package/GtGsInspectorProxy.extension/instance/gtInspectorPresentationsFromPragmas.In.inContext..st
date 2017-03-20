*GtGs-Inspector-Pharo-Core
gtInspectorPresentationsFromPragmas: aCollection In: composite inContext: aGTInspector

	(self gsPresentations select: [ :aGemstonePresentation |
		aGemstonePresentation cache at: #inspectorPresentation ifAbsent: [ false ] ])
			do: [ :aGemstonePresentation | |glamourPresentation|
				glamourPresentation := aGemstonePresentation gtGsAsGlamourPresentationOn: composite.
				self addInspectorImplicitNavigationBlockIn: glamourPresentation from: aGemstonePresentation.
				glamourPresentation ].
	
	super gtInspectorPresentationsFromPragmas: aCollection In: composite inContext: aGTInspector.
	