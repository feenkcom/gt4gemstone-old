private
buildDisplayNodeFor: anObject
	self flag: 'rename displayValue: into formatValue:?'.
	^ self listNodeClass new
		displayValue: (self formatBlock value: anObject);
		iconId: (self iconIdBlock value: anObject);
		targetObject: anObject