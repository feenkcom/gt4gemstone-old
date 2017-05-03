building
compose
	self tabulator with: [ :browser |
		browser
			row: #methods;
			row: #source.
		browser transmit
			to: #methods;
			andShow: [ :aComposite | 
				self methodsIn: aComposite ].
		browser transmit
			from: #methods;
			to: #source;
			andShow: [ :aComposite :methodNode | 
				methodNode ifNotNil: [
					self codeIn: aComposite for: methodNode ] ] ]