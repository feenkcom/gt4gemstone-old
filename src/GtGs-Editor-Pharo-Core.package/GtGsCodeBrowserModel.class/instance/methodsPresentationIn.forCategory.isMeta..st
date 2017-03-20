building presentations
methodsPresentationIn: aComposite forCategory: aCategoryName isMeta: isClassSide
	
	self categoryName: aCategoryName.
	self currentSide: (isClassSide ifTrue: [#class] ifFalse: [#instance]).
	^ aComposite fastList 
		display: [ (self methodsForCategoryLogic
			gtGsBareAsCollectionFormatterOn: self gemstoneClient 
			withArguments: { aCategoryName . className. isClassSide}) elements ]