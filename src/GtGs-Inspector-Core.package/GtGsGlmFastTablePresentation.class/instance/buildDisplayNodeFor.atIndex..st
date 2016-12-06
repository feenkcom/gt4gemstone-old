private
buildDisplayNodeFor: anObject atIndex: anIndex
 	| displayNode |
	self flag: 'this solutions duplicates the logic from #buildDisplayNodeFor:. This is not good.'.

	displayNode := self listNodeClass new
		formattedValue: (self formatBlock value: anObject);
		iconId: (self iconIdBlock value: anObject);
		targetObject: anObject.
	"displayNode := super buildDisplayNodeFor: anObject."
	self columns do: [ :aGsColumn |
		displayNode columnValues add: (
			aGsColumn computationBlock cull: displayNode targetObject cull: anIndex) ].
	^ displayNode
	