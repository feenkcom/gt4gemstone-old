*GtGs-Editor-Pharo-Core
browseMethodFromSignature: aMethodSignarute
	| codeBrowser position aClassName aMethodName isClassSide |
	
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
	
	codeBrowser := self categoriesBrowser.
	(codeBrowser hasClassNamed: aClassName)
		ifFalse: [ 
			self inform: 'No class found with the name ''', aClassName, ''''. ^ self ] .
	codeBrowser 
		open;
		selectMethod: aMethodName fromClass: aClassName classSide: isClassSide
	