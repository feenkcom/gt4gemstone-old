initialization
forObject: anObject

	targetObject := anObject.
	targetObjectOop := Reflection oopOf: anObject.
	self title: targetObject gtGsInspectorName.
	self updateTopezServer.
	self linkWithTopezServer.
	self updatePresentations.