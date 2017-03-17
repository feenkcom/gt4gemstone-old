building
sourcePaneTransmissionsIn: browser
	
	browser transmit 
		from: #symbols;
		to: #source;
		andShowDynamic: [ :aComposite :aSystemDictionaryName | 
			(self browserModel classCreationTemplateForSystemDictionary: aSystemDictionaryName )
				gtGsAsGlamourPresentationOn: aComposite ].
	browser transmit 
		from: #classes;
		to: #source;
		andShowDynamic: [ :aComposite :aClassName | 
			(self browserModel classDefinitionSourceFor: aClassName)
				gtGsAsGlamourPresentationOn: aComposite ].
	browser transmit 
		from: #methods port: #category;
		to: #source;
		andShowDynamic: [ :aComposite |
			self browserModel methodCreationTemplate gtGsAsGlamourPresentationOn: aComposite ].
	browser transmit 
		from: #methods port: #instance;
		to: #source;
		andShowDynamic: [ :aComposite :aMethodSelector |
			(self browserModel sourceCodeForMethod: aMethodSelector isMeta: false)
				gtGsAsGlamourPresentationOn: aComposite ].
	browser transmit 
		from: #methods port: #class;
		to: #source;
		andShowDynamic: [ :aComposite :aMethodSelector |
			(self browserModel sourceCodeForMethod: aMethodSelector isMeta: true)
				gtGsAsGlamourPresentationOn: aComposite ].
		
	