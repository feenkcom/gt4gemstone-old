accessing - views
classesPresentationIn: aComposite forSystemDictionary: aSystemDictionary
	<glamourRemotePresentation>
	
	^ aComposite fastList
		display: [ self classesForSystemDictionaryLogic value: aSystemDictionary ] ;
		format: [ :each | each asString ]
	