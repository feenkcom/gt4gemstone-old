ui
gtInspectorDetails

	^ {
	'Receiver oopType' -> self receiverOopType.
	'Selector' -> self selector
	}, 
	(self arguments collectWithIndex: [ :arg :index |
		('arg', index asString) -> arg ]),
	super gtInspectorDetails