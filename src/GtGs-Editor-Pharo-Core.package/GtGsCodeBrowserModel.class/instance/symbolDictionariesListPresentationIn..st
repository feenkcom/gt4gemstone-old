building presentations
symbolDictionariesListPresentationIn: aComposite

	^ aComposite fastList
		display: [ (self symbolDictionariesLogic 
			gtGsBareAsCollectionFormatterOn: self gemstoneClient) 
				remoteFormat: [ :aSystemSictionary | aSystemSictionary name ];
				elements ]