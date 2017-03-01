building
compose
	self tabulator with: [ :browser |
		browser
			row: [ :r | r column: #classes; column: #methods span: 3 ];
			row: #source.
		browser transmit
			to: #classes;
			andShow: [ :aComposite :inspectorProxy | 
				self classesIn: aComposite from: inspectorProxy codeBrowser ].
		browser transmit
			from: #classes;
			fromOutsidePort: #entity;
			when: [ :classNode | classNode notNil ];
			to: #methods;
			andShow: [ :aComposite :classNode :inspectorProxy |
					self methodsIn: aComposite for: classNode from: inspectorProxy codeBrowser ].
		browser transmit
			from: #methods;
			fromOutsidePort: #entity;
			to: #source;
			andShow: [ :aComposite :methodNode :inspectorProxy | 
				methodNode ifNotNil: [
					self codeIn: aComposite for: methodNode from: inspectorProxy codeBrowser ] ].
		browser transmit
			toOutsidePort: #selection;
			from: #methods port: #evaluatedObject.
		browser transmit
			toOutsidePort: #selection;
			from: #source port: #evaluatedObject.
	]