as yet unclassified
gtInspectorDetails

	^ {
	'Receiver object' -> self receiverObject.
	'Selector' -> self selector
	}, 
	(self arguments collectWithIndex: [ :arg :index |
		('arg', index asString) -> arg ]),
	super gtInspectorDetails