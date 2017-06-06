*GtGs-Editor-Pharo-Core
browseClassFrom: aClassName
	| codeBrowser |
	
	codeBrowser := self categoriesBrowser.
	(codeBrowser hasClassNamed: aClassName)
		ifFalse: [ 
			self inform: 'No class found with the name ''', aClassName, ''''. ^ self ] .
	codeBrowser 
		selectClass: aClassName asSymbol;
		open 
	