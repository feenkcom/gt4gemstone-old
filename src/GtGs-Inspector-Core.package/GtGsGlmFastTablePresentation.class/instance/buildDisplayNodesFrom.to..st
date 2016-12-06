private
buildDisplayNodesFrom: startIndex to: endIndex
	| displayNodes |
	
	displayNodes := OrderedCollection new: (endIndex - startIndex + 1).
	startIndex to: endIndex do: [ :index | | newValueNode |
		newValueNode := self buildDisplayNodeAt: index.
		displayNodes add: newValueNode ].
	^ displayNodes