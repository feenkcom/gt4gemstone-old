building
compose
	self tabulator with: [ :browser |
		browser
			row: [ :r | r column: #classes; column: #methods span: 3 ];
			row: #source.
		browser transmit
			to: #classes;
			andShow: [ :aComposite | 
				self classesIn: aComposite ].
		browser transmit
			from: #classes;
			fromOutsidePort: #entity;
			when: [ :classNode | classNode notNil ];
			to: #methods;
			andShow: [ :aComposite :classNode |
					self methodsIn: aComposite for: classNode ].
		browser transmit
			from: #methods;
			fromOutsidePort: #entity;
			to: #source;
			andShow: [ :aComposite :methodNode | 
				methodNode ifNotNil: [
					self codeIn: aComposite for: methodNode ] ].
		browser transmit
			toOutsidePort: #selection;
			from: #methods port: #evaluatedObject.
		browser transmit
			toOutsidePort: #selection;
			from: #source port: #evaluatedObject.
	]