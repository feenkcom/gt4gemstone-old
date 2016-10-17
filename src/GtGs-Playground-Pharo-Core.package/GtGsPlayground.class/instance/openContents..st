opening
openContents: aString
	| page |
	
	page := GTPlayPage new
		saveContent: aString;
		yourself.
	^ self openOn: page