building presentations
classDefinitionSourceIn: aComposite for: aClassName

	^ aComposite text
		display: [ self definitionSourceForClassLogic
			gtGsBarePerformRemotelyOn: self gemstoneClient 
			withArguments: { aClassName } ];
		with: [ :aPresentation | 
			self remoteCodeActionsIn: aPresentation ]
	
	