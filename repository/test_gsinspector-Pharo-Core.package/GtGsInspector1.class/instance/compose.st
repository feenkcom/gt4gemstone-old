as yet unclassified
compose

	self title: [ :anInspectorProxy | 'GtGsInspector1 on ', anInspectorProxy title].
	self pager with: [ :browser | 
		browser fixedSizePanes: 2.
		browser show: [ :aComposite |
			aComposite title: [ :anInspectorProxy | anInspectorProxy title ].
			aComposite dynamic 
				display: [ :anInspectorProxy | 
					(GLMCompositePresentation new with: [ :anotherComposite | 
						anInspectorProxy presentations do: [ :aGemstonePresentation |
							aGemstonePresentation asGlamourPresentationOn: aComposite.
							aComposite presentations do: [ :each |
								each gemstoneClient: gemstoneClient ] ] ] ) ] ] ].