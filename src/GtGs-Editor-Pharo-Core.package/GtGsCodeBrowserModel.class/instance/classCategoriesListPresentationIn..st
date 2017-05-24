building presentations
classCategoriesListPresentationIn: aComposite

	^ aComposite fastList
		icon: [ Smalltalk ui icons package ];
		display: [ (self classCategoriesLogic 
			gtGsBareAsCollectionFormatterOn: self gemstoneClient)
				elements ]