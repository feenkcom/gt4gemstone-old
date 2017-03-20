accessing
currentMethodsPresentation
	| methodBrowsers |
	
	methodBrowsers := (self browser paneNamed: #methods) presentations presentations.
	^ ((self browserModel isCurrentMethodClassSide
		ifFalse: [ methodBrowsers first ] ifTrue: [ methodBrowsers second ]) 
			paneNamed: #methods) presentations first cachedPresentation first