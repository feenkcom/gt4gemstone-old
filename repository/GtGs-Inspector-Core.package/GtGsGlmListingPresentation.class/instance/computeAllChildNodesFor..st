callbacks
computeAllChildNodesFor: aListOfNodeOops
	| updatedChildNodes |
	
	updatedChildNodes := (self serializer fromString: aListOfNodeOops) 
		collect: [ :aNodeOop | | nodeObject |
			nodeObject := (Object _objectForOop: aNodeOop).
			self computeAndUpdateChildNodesFor: nodeObject.
			nodeObject childNodes ].
	^ self serializer toString: updatedChildNodes