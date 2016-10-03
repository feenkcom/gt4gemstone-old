as yet unclassified
forOop: anOop

	targetObject := Object _objectForOop: anOop.
	self title: targetObject inspectorName.
	self updateTopezServer.
	self updatePresentations.