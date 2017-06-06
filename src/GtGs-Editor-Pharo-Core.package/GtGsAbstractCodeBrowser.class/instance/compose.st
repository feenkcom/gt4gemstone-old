building
compose
	| browser |
	
	self act: [:b | self updateBrowser ] 
	  icon: GLMUIThemeExtraIcons glamorousRefresh 
	  entitled: 'Update'.
	self dynamicActions: [ 
		self gemstoneClient globalToolbarActions ].
	self title: [ 
		self browserName, ' - ', 
		self browserModel gemstoneClient detailedDescription ].
	self color: (Color blue muchDarker alpha: 0.4).
	
	browser := self tabulator.
	browser 
		row: [ :aRow |
			aRow
				column: #containers;
				column: #classes;
				column: #methods span: 3 ] span: 2;
		row: #source span: 3.
	
	browser transmit 
		to: #containers;
		andShow: [ :aComposite  |
			self containersPresentationIn: aComposite ].
	browser transmit 
		to: #classes;
		andShow: [ :aComposite | 
			aComposite list display: [ #() ] ].
	browser transmit 
		to: #methods;
		andShow: [ :aComposite |
			self methodsBrowserIn: aComposite isMeta: false.
			self methodsBrowserIn: aComposite isMeta: true.
			"aComposite onChangeOfPort: #activePresentation act: [ :presentation |
				(presentation pane port: #activePresentation) value 
					ifNotNil: [ :activePresentation | 
						 ] ]" ].
	browser transmit 
		to: #source;
		andShow: [ :aComposite | 
			 self classCreationTemplateIn: aComposite forContainer: nil ].
	
	browser transmit
		from: #containers;
		to: #classes;
		andShowDynamic: [ :aComposite :aSymbol |
			self classesPresentationIn: aComposite for: aSymbol ].
	browser transmit 
		from: #containers;
		to: #methods.
	
	browser transmit 
		from: #classes;
		to: #methods port: #seletedClass.
	
	self sourcePaneTransmissionsIn: browser.
	