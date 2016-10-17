private
buildDisplayValueFor: anObject

	^ GtGsGlmValueNode new
		formattedValue: (self formatBlock value: anObject);
		targetObject: anObject