*GtGs-Inspector-Pharo-Core
setGlamourPresentationAttributesFor: aPresentation 
	super setGlamourPresentationAttributesFor: aPresentation.
	
	self shouldAttachCodeExecutionActions ifTrue: [ 
		aPresentation selectionActions 
			addAll: (aPresentation gtGsRemoteExecutionSelectionActionsWith: self);
			addAll: aPresentation gtGsLocalExecutionSelectionActions ].
		