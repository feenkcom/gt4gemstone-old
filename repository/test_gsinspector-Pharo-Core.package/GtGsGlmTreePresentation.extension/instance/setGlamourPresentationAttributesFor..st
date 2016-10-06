*test_gsinspector-Pharo-Core
setGlamourPresentationAttributesFor: aPresentation 
	super setGlamourPresentationAttributesFor: aPresentation.
	
	aPresentation 
		shouldRootsExpand: self shouldRootsExpand;
		children: [ :aListNode |
			aListNode hasChildNodes
				ifFalse: [ #() ]
				ifTrue: [  
					aListNode areChildNodesExpanded ifFalse: [ self updateChildNodesFor: aListNode ].
					aListNode childNodes ] ]