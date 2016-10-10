building
compose

	self title: [ :anInspectorProxy | 'GtGsInspector1 on ', anInspectorProxy title].
	self pager with: [ :browser | 
		browser fixedSizePanes: 2.
		browser show: [ :aComposite |
			aComposite title: [ :anInspectorProxy | anInspectorProxy title ].
			aComposite dynamic 
				display: [ :anInspectorProxy | 
					(GLMCompositePresentation new with: [ :anotherComposite | 
						anInspectorProxy gsPresentations do: [ :aGemstonePresentation |
							aGemstonePresentation gemstoneClient: gemstoneClient.
							aGemstonePresentation asGlamourPresentationOn: anotherComposite ] ] ) ] ] ].
		
	self first when: GLMPaneReplaced send: #actOnPaneReplaced: to: self.
	self first when: GLMPaneRemoved send: #actOnPaneRemoved: to: self.
	self when: GLMBrowserClosing send: #actOnBrowserClosing: to: self.