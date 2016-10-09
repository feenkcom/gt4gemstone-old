private
buildDisplayNodeFor: anObject
 
	^ self listNodeClass new
		displayValue: (self formatBlock value: anObject);
		iconId: (self iconIdBlock value: anObject);
		targetObject: anObject
	