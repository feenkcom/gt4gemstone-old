ui
gtInspectorDetails

	^ {
	'Session' ->  self gemstoneSession.
	}, (self hasGemstoneClient 
		ifTrue: [ { 
			'Client' ->   self gemstoneClient. 
			'User'   ->   self userId .} ]
		ifFalse: [ #()] )