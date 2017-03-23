building presentations
methodsPresentationIn: aComposite forCategory: aCategoryName isMeta: isClassSide
	
	self categoryName: aCategoryName.
	self currentSide: (isClassSide ifTrue: [#class] ifFalse: [#instance]).
	^ aComposite fastList 
		display: [ (self methodsForCategoryLogic
			gtGsBareAsCollectionFormatterOn: self gemstoneClient 
			withArguments: { categoryName . className. self isClassSideActive }) elements ];
		with: [ :aPresentation |
			aPresentation selectionActions addAll: (self methodsListActionsWith: self) ]