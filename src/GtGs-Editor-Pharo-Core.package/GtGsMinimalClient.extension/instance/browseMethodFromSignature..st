*GtGs-Editor-Pharo-Core
browseMethodFromSignature: aMethodSignarute
	| position aClassName aMethodName isClassSide |
	
	position := aMethodSignarute findString: '>>#'.
	position = 0 ifTrue: [ 
		self inform: 'Wrong method signature'.
		^ self ].
	aClassName := aMethodSignarute copyFrom: 1 to: position -1.
	aMethodName := aMethodSignarute copyFrom: position + 3 to: aMethodSignarute size.
	
	isClassSide := false.
	(aClassName endsWith: ' class') ifTrue: [
		isClassSide := true.
		aClassName := aClassName copyFrom: 1 to: aClassName size - ' class' size ].
	
	self browseMethod: aMethodName fromClass: aClassName classSide: isClassSide
	