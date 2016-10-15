*GtGs-Inspector-Pharo-Core
gtInspectorTargetObjectPresentationsIn: aComposite
	<gtInspectorPresentationOrder: 1>
	
	self gsPresentations do: [ :aGemstonePresentation |
		aGemstonePresentation asGlamourPresentationOn: aComposite ]