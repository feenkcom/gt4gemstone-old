building
sourcePaneTransmissionsIn: browser
	
	browser transmit 
		from: #symbols;
		to: #source;
		andShowDynamic: [ :aComposite :aSystemDictionaryName | 
			aComposite text
				display: [ self browserModel classCreationTemplateForSystemDictionary: aSystemDictionaryName ] ].
	browser transmit 
		from: #classes;
		to: #source;
		andShowDynamic: [ :aComposite :aClassName | 
			(self browserModel classDefinitionSourceFor: aClassName)
				asGlamourPresentationOn: aComposite ].
	browser transmit 
		from: #methods port: #category;
		to: #source;
		andShowDynamic: [ :aComposite |
			aComposite text
				display: [ self browserModel methodCreationTemplate ] ].
	browser transmit 
		from: #methods port: #instance;
		to: #source;
		andShowDynamic: [ :aComposite :aMethodSelector |
			(self browserModel sourceCodeForMethod: aMethodSelector isMeta: false)
				asGlamourPresentationOn: aComposite ].
	browser transmit 
		from: #methods port: #class;
		to: #source;
		andShowDynamic: [ :aComposite :aMethodSelector |
			(self browserModel sourceCodeForMethod: aMethodSelector isMeta: true)
				asGlamourPresentationOn: aComposite ].
		
	