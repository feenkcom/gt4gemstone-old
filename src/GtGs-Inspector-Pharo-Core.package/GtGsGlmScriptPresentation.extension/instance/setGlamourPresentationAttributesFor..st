*GtGs-Inspector-Pharo-Core
setGlamourPresentationAttributesFor: aPresentation 
	super setGlamourPresentationAttributesFor: aPresentation.
	
	self shouldAttachCodeExecutionActions ifTrue: [ 
		aPresentation selectionActions 
			addAll: (aPresentation gtGsRemoteExecutionSelectionActionsWith: self);
			addAll: aPresentation gtGsLocalExecutionSelectionActions.

		aPresentation format: [ :aListNode |
			String streamContents: [ :stream | 
				stream 
					nextPutAll: aListNode formattedValue asComment;
					cr;
					nextPutAll: (GTSnippets snippetAt: (self cacheAt: #className)) ] ].
			
		aPresentation onChangeOfPort: #text act: [ :textPresentation |
			GTSnippets 
				snippetAt: (self cacheAt: #className)
				put: (self stringWithoutInitialCommentFrom: textPresentation text asString).
			textPresentation clearUserEdits ] ].
		