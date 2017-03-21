building actions
remoteCodeActionsIn: aPresentation

	aPresentation selectionActions 
		addAll: (aPresentation gtGsRemoteExecutionSelectionActionsWith: self);
		addAll:  aPresentation gtGsLocalExecutionSelectionActions;
		addAll: (aPresentation gtGsMethodCodeActionsWith: self)