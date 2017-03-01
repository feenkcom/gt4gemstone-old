building
compose
	self tabulator with: [ :browser |
		browser
			row: [ :r | r column: #classes; column: #methods span: 3 ];
			row: #source.
		browser transmit
			to: #classes;
			andShow: [ :aComposite :inspectorProxy | 
				self classesIn: aComposite from: inspectorProxy methodsBrowser ].
"		browser transmit
			to: #classes port: #selection;
			transformed: [:each | each class ]."
		browser transmit
			fromOutsidePort: #entity;
			from: #classes;
			to: #methods;
			andShow: [ :aComposite :inspectorProxy :selectedNode |
				selectedNode ifNotNil: [ 
					self methodsIn: aComposite for: selectedNode from: inspectorProxy methodsBrowser ] ].
		browser transmit
			from: #methods;
			fromOutsidePort: #entity;
			to: #source;
			when: [ :method | method notNil ];
			andShow: [ :a :method :object | self sourceOf: method for: object in: a ].
		browser transmit
			toOutsidePort: #selection;
			from: #methods port: #evaluatedObject.
		browser transmit
			toOutsidePort: #selection;
			from: #source port: #evaluatedObject.
	]