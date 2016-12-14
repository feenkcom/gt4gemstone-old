updating
updateFull: aPresentationTitle
	| gsPresentationToUpdate |
	
	presentations size > 0 ifTrue: [ 
		gsPresentationToUpdate := presentations 
			detect: [ :aGsPresentation | aGsPresentation titleValue = aPresentationTitle ] 
			ifNone: [ presentations first ].
		gsPresentationToUpdate updateCache ].