*GtGs-Editor-Pharo-Core
browseMethod: aMethodName fromClass: aClassName classSide: isClassSide
	|codeBrowser|
	
	codeBrowser := self categoriesBrowser.
	(codeBrowser hasClassNamed: aClassName)
		ifFalse: [ 
			self inform: 'No class found with the name ''', aClassName, ''''. ^ self ] .
	codeBrowser 
		open;
		selectMethod: aMethodName fromClass: aClassName classSide: isClassSide
	