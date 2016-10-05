*test_gsinspector-Pharo-Core
setGlamourPresentationAttributesFor: aPresentation 
	super setGlamourPresentationAttributesFor: aPresentation.
	
	aPresentation 
		shouldRootsExpand: self shouldRootsExpand;
		children: [ :anAssociation |
			self executeRemotely: #computeChildrenFor: withArguments: { anAssociation key } ]