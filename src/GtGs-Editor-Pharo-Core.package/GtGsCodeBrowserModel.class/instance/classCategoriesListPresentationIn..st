building presentations
classCategoriesListPresentationIn: aComposite

	^ aComposite fastList
		display: [ (self classCategoriesLogic 
			gtGsBareAsCollectionFormatterOn: self gemstoneClient)
				elements ]