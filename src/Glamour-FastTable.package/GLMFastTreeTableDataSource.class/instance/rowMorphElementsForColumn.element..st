as yet unclassified
rowMorphElementsForColumn: glamourColumn element: element
	| rowElements contentMorph tagMorphs |
		
	contentMorph := glamourColumn modifiedBlock
		ifNotNil: [ self editRowMorphForColumn: glamourColumn element: element ]
		ifNil: [ self viewRowMorphForColumn: glamourColumn element: element ].
	
	rowElements := OrderedCollection new
		add: contentMorph;
		yourself.
	
	tagMorphs := self tagMorphsFrom: glamourColumn for: element.
	tagMorphs ifNotEmpty: [
		rowElements addAll: tagMorphs ].
	
	^ rowElements