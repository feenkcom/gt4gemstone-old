building presentations
classDefinitionSourceIn: aComposite for: aClassName

	^ aComposite text
		display: [ self definitionSourceForClassLogic
			gtGsPerformRemotelyOn: self gemstoneClient 
			withArguments: { aClassName } ];
		with: [ :aPresentation | 
			self remoteCodeActionsIn: aPresentation ]
	
	