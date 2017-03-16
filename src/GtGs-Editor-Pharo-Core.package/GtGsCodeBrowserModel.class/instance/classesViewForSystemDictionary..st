accessing - views
classesViewForSystemDictionary: aSystemDictionaryName
	
	^ self classesForSystemDictionaryLogic
			gtGsBareAsListViewOn: self gemstoneClient 
			withArguments: { aSystemDictionaryName }
	
	