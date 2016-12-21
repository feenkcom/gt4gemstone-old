private
buildDisplayValueFor: anObject

	^ GtGsGlmValueNode new
		formattedValue: (self formatBlock ifNotNil: [ :aBlock | aBlock value: anObject ]);
		targetObject: anObject