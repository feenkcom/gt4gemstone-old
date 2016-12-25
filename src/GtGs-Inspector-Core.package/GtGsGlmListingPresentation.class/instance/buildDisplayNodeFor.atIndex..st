private
buildDisplayNodeFor: anObject atIndex: anIndex

	^ self listNodeClass new
		formattedValue: (self formatBlock ifNotNil: [ :aBlock | aBlock value: anObject ]);
		iconId: (self iconIdBlock value: anObject);
		targetObject: anObject