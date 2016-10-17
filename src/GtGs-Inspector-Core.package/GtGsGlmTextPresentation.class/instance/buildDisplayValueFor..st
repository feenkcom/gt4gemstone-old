private
buildDisplayValueFor: anObject

	^ GtGsGlmValueNode
		formattedValue: (self formatBlock value: anObject) 