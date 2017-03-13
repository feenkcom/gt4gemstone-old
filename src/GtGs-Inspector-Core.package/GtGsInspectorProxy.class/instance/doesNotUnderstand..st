as yet unclassified
doesNotUnderstand: aMessage
	self gtGsIsGemstone ifTrue: [ 
		^ super doesNotUnderstand: aMessage ].
	
	^ self 
		glamourPresentationUsing: aMessage selector 
		on: aMessage arguments first