callbacks
computeAndUpdateChildNodesFor: aNodeObject
	| childObjects childNodes childIndex |
	
	childObjects := self childrenBlock value: aNodeObject targetObject.
	
	childIndex := 1.
	childNodes := OrderedCollection new: (childObjects size).
	childObjects do: [ :anObject |
		childNodes add: (self buildDisplayNodeFor: anObject atIndex: childIndex).
		childIndex := childIndex + 1 ].
	
	aNodeObject
			childNodes: childNodes.