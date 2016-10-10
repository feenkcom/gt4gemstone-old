callbacks
computeAllChildNodesFor: aListOfNodeOops
	| updatedChildNodes |
	
	updatedChildNodes := (self serializer fromString: aListOfNodeOops) 
		collect: [ :aNodeOop | | nodeObject |
			nodeObject := (Object _objectForOop: aNodeOop).
			nodeObject childNodes: (self computeChildrenFor: nodeObject).
			nodeObject childNodes ].
	^ self serializer toString: updatedChildNodes