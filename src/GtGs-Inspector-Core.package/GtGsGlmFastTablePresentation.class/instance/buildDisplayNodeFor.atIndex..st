private
buildDisplayNodeFor: anObject atIndex: anIndex
 	| displayNode |
	"this solutions duplicates the logic from #buildDisplayNodeFor:. This is not good."

	displayNode := self listNodeClass new
		formattedValue: (self formatBlock ifNotNil: [ :aBlock | aBlock value: anObject ]);
		iconId: (self iconIdBlock value: anObject);
		targetObject: anObject.
	"displayNode := super buildDisplayNodeFor: anObject."
	self columns do: [ :aGsColumn |
		displayNode columnValues add: (
			aGsColumn computationBlock cull: displayNode targetObject cull: anIndex) ].
	^ displayNode
	