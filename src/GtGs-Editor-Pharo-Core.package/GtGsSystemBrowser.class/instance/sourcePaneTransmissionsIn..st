building
sourcePaneTransmissionsIn: browser
	
	browser transmit 
		from: #symbols;
		to: #source;
		andShowDynamic: [ :aComposite :aSystemDictionaryName | 
			self browserModel classCreationTemplateIn: aComposite forSystemDictionary: aSystemDictionaryName ].
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
			self browserModel methodCreationTemplateIn: aComposite ].
	browser transmit 
		from: #methods port: #instance;
		to: #source;
		andShowDynamic: [ :aComposite :aMethodSelector |
			self browserModel sourceCodePresentationIn: aComposite forMethod: aMethodSelector isMeta: false withCodeExecutor: self ].
	browser transmit 
		from: #methods port: #class;
		to: #source;
		andShowDynamic: [ :aComposite :aMethodSelector |
			self browserModel sourceCodePresentationIn: aComposite forMethod: aMethodSelector isMeta: true  withCodeExecutor: self ].
		
	