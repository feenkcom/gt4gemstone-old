accessing
targetObject: anObject
	super targetObject: anObject.
	self formattedValue: (self targetObject 
		ifNotNil: [ self targetObject gtGsInspectorName ]
		ifNil: [ 'missing element' ])