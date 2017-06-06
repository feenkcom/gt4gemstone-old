building presentations
classesPresentationIn: aComposite forCategory: aCategoryName
	
	^ aComposite fastList
		icon: [ Smalltalk ui icons iconNamed: #class ];
		display: [ (self classesForCategoryLogic
			gtGsBareAsCollectionFormatterOn: self gemstoneClient 
			withArguments: { aCategoryName }) 
				remoteFormat: [ :aClass | aClass name ];
				elements ]
	