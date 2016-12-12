callbacks
computeChildNodesFor: aListNodeOop
	| aNodeOop nodeObject |
	
	aNodeOop := self topezServer objectSerializer fromString: aListNodeOop.
  	nodeObject := (Object _objectForOop: aNodeOop).
	self computeAndUpdateChildNodesFor: nodeObject.
	^ self topezServer objectSerializer toString: nodeObject childNodes