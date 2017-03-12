*GtGs-Inspector-Pharo-Core
gtInspectorTargetObjectPresentationsIn: aComposite
	<gtInspectorPresentationOrder: 1>
	
	(self gsPresentations select: [ :aGemstonePresentation |
		aGemstonePresentation cache at: #inspectorPresentation ifAbsent: [ true ] ])
			do: [ :aGemstonePresentation | |glamourPresentation|
				glamourPresentation := aGemstonePresentation asGlamourPresentationOn: aComposite.
				self addInspectorImplicitNavigationBlockIn: glamourPresentation from: aGemstonePresentation.
				glamourPresentation ]