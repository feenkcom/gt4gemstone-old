*GtGs-Editor-Pharo-Core
browseClassFrom: aString
	| codeBrowser |
	
	codeBrowser := self categoriesBrowser.
	(codeBrowser hasClassNamed: aString)
		ifFalse: [ 
			self inform: 'No class found with the name ''', aString, ''''. ^ self ] .
	codeBrowser 
		selectClass: aString asSymbol;
		open 
	