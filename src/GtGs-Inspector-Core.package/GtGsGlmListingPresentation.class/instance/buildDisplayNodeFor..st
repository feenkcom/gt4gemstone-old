private
buildDisplayNodeFor: anObject

	^ self listNodeClass new
		formattedValue: (self formatBlock value: anObject);
		iconId: (self iconIdBlock value: anObject);
		targetObject: anObject