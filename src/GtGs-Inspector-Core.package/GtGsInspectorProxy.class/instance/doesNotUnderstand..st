reflective operations
doesNotUnderstand: aMessage
	self gtGsIsGemstone ifTrue: [ 
		^ super doesNotUnderstand: aMessage ].
	
	 ^ self 
		inspectorPresentationFor: #targetObject
		using: aMessage selector
		on: aMessage arguments first