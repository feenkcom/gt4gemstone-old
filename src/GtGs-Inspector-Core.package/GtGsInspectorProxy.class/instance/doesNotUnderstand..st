as yet unclassified
doesNotUnderstand: aMessage
	self gtGsIsGemstone ifTrue: [ 
		^ super doesNotUnderstand: aMessage ].
	
	^ self 
		glamourPresentationFor: #targetObject
		using: aMessage selector 
		on: aMessage arguments first