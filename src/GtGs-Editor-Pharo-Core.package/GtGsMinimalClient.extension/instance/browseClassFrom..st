*GtGs-Editor-Pharo-Core
browseClassFrom: aString
	| codeBrowser |
	
	codeBrowser := self categoriesBrowser.
	(codeBrowser hasClassNamed: aString asSymbol)
		ifFalse: [ 
			self inform: 'No class found with the name ''', aString, '''' ] 
		ifTrue: [
			codeBrowser 
				selectClass: aString asSymbol;
				open ]
	