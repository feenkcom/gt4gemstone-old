private
buildDisplayValueFor: anObject

	^ GtGsGlmValueNode new
		formattedValue: (self formatBlock value: anObject) 