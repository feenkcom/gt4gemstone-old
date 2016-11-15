accessing
targetObject: anObject
	super targetObject: anObject.
	self formattedValue ifNotNil: [
		self formattedValue: self targetObject gtGsInspectorName ]