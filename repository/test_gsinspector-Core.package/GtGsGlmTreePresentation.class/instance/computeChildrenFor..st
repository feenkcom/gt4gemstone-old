callbacks
computeChildrenFor: aNodeOop
	| childObjects childNodes |
	
	childObjects := self childrenBlock value: ((Object _objectForOop: aNodeOop) targetObject).
	
	childNodes := OrderedCollection new: (childObjects size).
	childObjects do: [ :anObject |
		childNodes add: (self buildDisplayNodeFor: anObject) ].
	
	^ childNodes