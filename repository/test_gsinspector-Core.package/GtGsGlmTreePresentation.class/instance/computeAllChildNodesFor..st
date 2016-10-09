callbacks
computeAllChildNodesFor: aListOfNodeOops
	| updatedChildNodes |
	
	updatedChildNodes := (self serializer fromString: aListOfNodeOops) collect: [ :aNodeOop | self computeChildrenFor: aNodeOop ].
	^ self serializer toString: updatedChildNodes