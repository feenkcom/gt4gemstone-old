private
buildDisplayNodesFor: currentObjects 
	| displayNodes |
	
	displayNodes := OrderedCollection new: (currentObjects size).
	currentObjects do: [ :anObject |
		displayNodes add: (self buildDisplayNodeFor: anObject) ].
	^ displayNodes