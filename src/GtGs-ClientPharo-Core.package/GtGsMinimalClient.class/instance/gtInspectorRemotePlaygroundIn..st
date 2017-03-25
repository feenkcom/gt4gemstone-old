printing
gtInspectorRemotePlaygroundIn: aComposite
	<gtInspectorPresentationOrder: 5>
	
	aComposite pharoScript 	
		title: 'Remote Playground';
		display: [ '' ];
		with: [ :aPresentation | aPresentation selectionActions 
			addAll: (aPresentation gtGsRemoteExecutionSelectionActionsWith: self);
			addAll: (aPresentation gtGsRemoteBrowsingSelectionActionsWith: self);
			addAll: (aPresentation gtGsLocalExecutionSelectionActions);
			addAll: (aPresentation gtGsLocalBrowsingSelectionActions);
			addAll: (aPresentation codeEditingSelectionActions);
			addAll: (aPresentation gtGsMethodCodeActionsWith: self) ]
		