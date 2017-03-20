building presentations
categoriesPresentationIn: aComposite forClass: aClassName isMeta: isClassSide
	
	self currentClassName: aClassName.
	^ aComposite fastList
		display: [ (self categoriesForClassLogic 
			gtGsBareAsCollectionFormatterOn: self gemstoneClient 
			withArguments: { aClassName . isClassSide}) elements ]
	
	