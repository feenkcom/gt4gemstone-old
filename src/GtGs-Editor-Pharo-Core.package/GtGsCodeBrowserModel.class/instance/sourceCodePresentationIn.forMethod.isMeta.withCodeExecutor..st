building presentations
sourceCodePresentationIn: aComposite forMethod: aMethodSelector isMeta: isClassSide withCodeExecutor: aGsCodeExecutor

	self methodSelector: aMethodSelector.
	^ aComposite pharoMethod
		display: [ self sourceCodeForMethodLogic
			gtGsPerformRemotelyOn: self gemstoneClient 
			withArguments: { aMethodSelector . className . isClassSide } ];
		with: [ :aPresentation | 
			aPresentation selectionActions 
				addAll: (aPresentation gtGsRemoteExecutionSelectionActionsWith: aGsCodeExecutor);
				addAll:  aPresentation gtGsLocalExecutionSelectionActions;
				addAll: (aPresentation gtGsMethodCodeActionsWith: aGsCodeExecutor) ]