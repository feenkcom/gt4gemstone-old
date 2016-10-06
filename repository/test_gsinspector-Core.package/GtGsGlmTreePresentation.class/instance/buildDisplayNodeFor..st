private
buildDisplayNodeFor: anObject
 	| displayNode childObjects childNodes |
	
	displayNode := super buildDisplayNodeFor: anObject.
	
	childObjects := self childrenBlock value: displayNode targetObjectOop.
	childNodes := OrderedCollection new: (childObjects size).
	childObjects do: [ :each |
		childNodes add: (super buildDisplayNodeFor: each) ].

	displayNode
		childNodes: childNodes.
	^ displayNode
	