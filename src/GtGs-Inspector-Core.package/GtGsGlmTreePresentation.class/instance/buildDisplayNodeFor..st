as yet unclassified
buildDisplayNodeFor: anObject
	| node |
	
	node := super buildDisplayNodeFor: anObject.
	self hasChildNodesBlock ifNotNil: [ :aBlock |
		node hasChildNodes: (aBlock value: anObject) ].
	^ node