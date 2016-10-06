callbacks
computeAllChildNodesFor: aListOfOops
	| updatedChildNodes |
	
	updatedChildNodes := (self serializer fromString: aListOfOops) collect: [ :anOop | self computeChildrenFor: anOop ].
	^ self serializer toString: updatedChildNodes