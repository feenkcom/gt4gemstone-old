accessing - views
categoriesViewForClass: aClassName isMeta: isClassSide
	
	className := aClassName.
	^ self categoriesForClassLogic 
			gtGsBareAsListViewOn: self gemstoneClient 
			withArguments: { aClassName . isClassSide}
	
	