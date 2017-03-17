building
compose
	| browser |

	browser := self tabulator.
	browser 
		row: [ :aRow |
			aRow
				column: #symbols;
				column: #classes;
				column: #methods span: 3 ] span: 2;
		row: #source span: 3.
	
	browser transmit 
		to: #symbols;
		andShow: [ :aComposite :aModel |
			aModel symbolDictionariesListView asGlamourPresentationOn: aComposite ].
	browser transmit 
		to: #classes;
		andShow: [ :aComposite | 
			aComposite list display: [ #() ] ].
	browser transmit 
		to: #methods;
		andShow: [ :aComposite |
			self methodsBrowserIn: aComposite isMeta: false.
			self methodsBrowserIn: aComposite isMeta: true ].
	browser transmit 
		to: #source;
		andShow: [ :aComposite | 
			 (self browserModel classCreationTemplateForSystemDictionary: nil) asGlamourPresentationOn: aComposite  ].
		
	browser transmit
		from: #symbols;
		to: #classes;
		andShowDynamic: [ :aComposite :aSystemDictionaryName |
			(self browserModel classesViewForSystemDictionary: aSystemDictionaryName)
				asGlamourPresentationOn: aComposite ].
	browser transmit 
		from: #symbols;
		to: #methods.
	
	browser transmit 
		from: #classes;
		to: #methods port: #seletedClass.
	
	self sourcePaneTransmissionsIn: browser.
		
	