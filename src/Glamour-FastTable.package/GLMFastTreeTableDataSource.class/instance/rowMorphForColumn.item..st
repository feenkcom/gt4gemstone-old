as yet unclassified
rowMorphForColumn: aColumn item: anItem
	| rowElements |
	rowElements := OrderedCollection new.
	
	(self table columns first == aColumn) ifTrue: [
		anItem depth timesRepeat: [ rowElements add: self class emptyMorph ].
		rowElements add: (self buttonFor: anItem).
		(self glamourPresentation icon cull: anItem data) ifNotNil: [ :icon | rowElements add: icon asMorph ] ].
	
	rowElements
		addAll: (self rowMorphElementsForColumn: aColumn glamourColumn element: anItem data).
		
	^ Smalltalk ui theme newRowIn: World for: rowElements