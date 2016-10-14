callbacks
computeAndUpdateChildNodesFor: aNodeObject
	| childObjects childNodes |
	
	childObjects := self childrenBlock value: aNodeObject targetObject.
	
	childNodes := OrderedCollection new: (childObjects size).
	childObjects do: [ :anObject |
		childNodes add: (self buildDisplayNodeFor: anObject) ].
	
	aNodeObject
			childNodes: childNodes.