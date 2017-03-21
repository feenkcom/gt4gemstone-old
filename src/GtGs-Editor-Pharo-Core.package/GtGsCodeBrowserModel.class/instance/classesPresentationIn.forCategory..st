building presentations
classesPresentationIn: aComposite forCategory: aCategoryName
	
	^ aComposite fastList
		display: [ (self classesForCategoryLogic
			gtGsBareAsCollectionFormatterOn: self gemstoneClient 
			withArguments: { aCategoryName }) 
				remoteFormat: [ :aClass | aClass name ];
				elements ]
	