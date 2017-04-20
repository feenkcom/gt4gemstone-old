*GtGs-Inspector-Pharo-Core
setGlamourPresentationAttributesFor: aPresentation 

	aPresentation
		title: (self cacheAt: #'title' ifAbsentPut: [ self executeRemotely: #'computeTitle' ]) ;
		display: [ self obtainDisplayValue ].
		
	self gsActions withIndexDo: [ :aGsAction :anIndex |
		aPresentation actions add:
			(aGsAction 
				asGlamourActionFromGsPresentation: self
				withId: anIndex) ].
			
	self gsSelectionActions withIndexDo: [ :aGsAction :anIndex |
		aPresentation selectionActions add:
			(aGsAction 
				asGlamourSelectionActionFromGsPresentation: self
				withId: anIndex) ]
