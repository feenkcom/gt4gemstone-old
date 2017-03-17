*GtGs-Inspector-Pharo-Core
gtInspectorTargetObjectPresentationsIn: aComposite
	<gtInspectorPresentationOrder: 1>
	
	(self gsPresentations select: [ :aGemstonePresentation |
		aGemstonePresentation cache at: #inspectorPresentation ifAbsent: [ false ] ])
			do: [ :aGemstonePresentation | |glamourPresentation|
				glamourPresentation := aGemstonePresentation gtGsAsGlamourPresentationOn: aComposite.
				self addInspectorImplicitNavigationBlockIn: glamourPresentation from: aGemstonePresentation.
				glamourPresentation ]