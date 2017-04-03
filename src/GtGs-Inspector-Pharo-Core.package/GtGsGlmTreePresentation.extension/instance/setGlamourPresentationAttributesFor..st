*GtGs-Inspector-Pharo-Core
setGlamourPresentationAttributesFor: aPresentation 
	super setGlamourPresentationAttributesFor: aPresentation.
	
	aPresentation 
		shouldRootsExpand: self shouldRootsExpand;
		hasChildren: [ :aListNode | aListNode hasChildNodes ];
		children: [ :aListNode |
			aListNode hasChildNodes
				ifFalse: [ #() ]
				ifTrue: [  
					aListNode isChildNodesInitialized ifFalse: [ self updateChildNodesFor: aListNode ].
					aListNode childNodes ] ].
			
	self columns withIndexDo: [ :aGsColumn :index | 
		aPresentation columns add: (GLMTableColumn new
			title: aGsColumn titleCache;
			width: aGsColumn width;
			computation: [ :aTableNode | aTableNode columnValues at: index ]) ]