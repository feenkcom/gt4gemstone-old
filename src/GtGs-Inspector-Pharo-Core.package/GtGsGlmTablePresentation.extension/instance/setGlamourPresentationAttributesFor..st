*GtGs-Inspector-Pharo-Core
setGlamourPresentationAttributesFor: aPresentation 
	super setGlamourPresentationAttributesFor: aPresentation.
	
	aPresentation 
		shouldRootsExpand: self shouldRootsExpand;
		children: [ :aListNode |
			aListNode hasChildNodes
				ifFalse: [ #() ]
				ifTrue: [  
					aListNode areChildNodesExpanded ifFalse: [ self updateChildNodesFor: aListNode ].
					aListNode childNodes ] ].

	self columns withIndexDo: [ :aGsColumn :index | 
		aPresentation addColumn: (GLMTableColumn new
			title: aGsColumn titleCache;
			width: aGsColumn width;
			computation: [ :aTableNode | aTableNode columnValues at: index ]) ]
	