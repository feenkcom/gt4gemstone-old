*test_gsinspector-Pharo-Core
setGlamourPresentationAttributesFor: aPresentation 

	aPresentation 
		shouldRootsExpand: self shouldRootsExpand;
		children: [ :anAssociation |
			 self executeRemotely: #computeChildrenFor: withArguments: { anAssociation key } ]