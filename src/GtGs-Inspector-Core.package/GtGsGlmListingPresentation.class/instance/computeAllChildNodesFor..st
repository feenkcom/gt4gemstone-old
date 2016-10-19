callbacks
computeAllChildNodesFor: aListOfNodeOops
	| updatedChildNodes |
	
	updatedChildNodes := (self topezServer objectSerializer fromString: aListOfNodeOops) 
		collect: [ :aNodeOop | | nodeObject |
			nodeObject := (Object _objectForOop: aNodeOop).
			self computeAndUpdateChildNodesFor: nodeObject.
			nodeObject childNodes ].
	^ self topezServer objectSerializer toString: updatedChildNodes