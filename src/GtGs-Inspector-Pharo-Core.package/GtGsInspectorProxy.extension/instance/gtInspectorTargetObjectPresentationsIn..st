*GtGs-Inspector-Pharo-Core
gtInspectorTargetObjectPresentationsIn: aComposite
	<gtInspectorPresentationOrder: 1>
	
	self gsPresentations do: [ :aGemstonePresentation | |glamourPresentation|
		glamourPresentation := aGemstonePresentation asGlamourPresentationOn: aComposite.
		self addNavigationBlockIn: glamourPresentation from: aGemstonePresentation.
		glamourPresentation ]