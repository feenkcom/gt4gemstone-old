accessing
targetObject: anObject
	super targetObject: anObject.
	self formattedValue ifNil: [
		self formattedValue: self targetObject gtGsInspectorName ]