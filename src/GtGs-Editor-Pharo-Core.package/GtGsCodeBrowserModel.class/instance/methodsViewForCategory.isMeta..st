accessing - views
methodsViewForCategory: aCategoryName isMeta: isClassSide
	
	^ self methodsForCategoryLogic
			gtGsBareAsListViewOn: self gemstoneClient 
			withArguments: { aCategoryName . className. isClassSide}
	
	