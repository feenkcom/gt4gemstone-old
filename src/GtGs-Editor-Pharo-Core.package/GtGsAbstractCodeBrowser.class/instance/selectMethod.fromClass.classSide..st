actions
selectMethod: aMethodName fromClass: aClassName classSide: isClassSide
	| classContainerName categoryName methodsPane methodBrowsers currentCategoriesPresentation |
	
	classContainerName := self containerNameForClassNamed: aClassName asString.
	categoryName := self categoryNameForMethodNamed: aMethodName fromClass: aClassName classSide: isClassSide.
	
	self containersPresentation selection: classContainerName.
	self classesPresentation selection: aClassName asString.
	
	methodsPane := (self browser paneNamed: #methods).
	methodBrowsers := methodsPane presentations presentations.
	isClassSide ifTrue: [ 
		methodsPane lastActivePresentation: methodBrowsers second ].
	currentCategoriesPresentation := ((isClassSide ifFalse: [ methodBrowsers first ] ifTrue: [ methodBrowsers second ]) 
			paneNamed: #categories) presentations first cachedPresentation first.
	
	currentCategoriesPresentation  selection: categoryName.
	self currentMethodsPresentation selection: aMethodName