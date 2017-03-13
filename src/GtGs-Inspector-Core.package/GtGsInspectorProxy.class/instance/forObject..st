initialization
forObject: anObject

	targetObject := anObject.
	self title: targetObject gtGsInspectorName.
	self updateTopezServer.
	self updatePresentations.