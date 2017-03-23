*GtGs-Inspector-Core
gtGsInspectorMetaIn: aComposite
	<gtInspectorPresentationOrder: 9>
	
	self gtGsIsGemstone ifTrue: [ 
		aComposite custom: (GtGsInspectorCodeBrowser new
			title: [ 'Meta' ]) ]