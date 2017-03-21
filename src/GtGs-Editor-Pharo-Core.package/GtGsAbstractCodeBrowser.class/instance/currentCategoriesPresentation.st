accessing - presentations
currentCategoriesPresentation
	| methodBrowsers |
	
	methodBrowsers := (self browser paneNamed: #methods) presentations presentations.
	^ ((self browserModel isClassSideActive
		ifFalse: [ methodBrowsers first ] ifTrue: [ methodBrowsers second ]) 
			paneNamed: #categories) presentations first cachedPresentation first