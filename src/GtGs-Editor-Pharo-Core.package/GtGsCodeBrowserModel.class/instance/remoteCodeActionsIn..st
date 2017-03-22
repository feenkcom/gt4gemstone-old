building actions
remoteCodeActionsIn: aPresentation

	aPresentation selectionActions 
		addAll: (aPresentation gtGsRemoteExecutionSelectionActionsWith: self);
		addAll: (aPresentation gtGsRemoteBrowsingSelectionActionsWith: self gemstoneClient);
		addAll: (aPresentation gtGsLocalExecutionSelectionActions);
		addAll: (aPresentation gtGsLocalBrowsingSelectionActions);
		addAll: (aPresentation codeEditingSelectionActions);
		addAll: (aPresentation gtGsMethodCodeActionsWith: self)