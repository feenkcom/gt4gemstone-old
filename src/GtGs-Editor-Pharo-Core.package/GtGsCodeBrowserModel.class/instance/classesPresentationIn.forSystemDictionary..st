building presentations
classesPresentationIn: aComposite forSystemDictionary: aSystemDictionaryName
	
	^ aComposite fastList
		display: [ (self classesForSystemDictionaryLogic
			gtGsBareAsCollectionFormatterOn: self gemstoneClient 
			withArguments: { aSystemDictionaryName }) 
				remoteFormat: [ :aClass | aClass name ];
				elements ]
	