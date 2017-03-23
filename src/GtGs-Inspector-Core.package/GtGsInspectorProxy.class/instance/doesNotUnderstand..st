reflective operations
doesNotUnderstand: aMessage
	self gtGsIsGemstone ifTrue: [ 
		^ super doesNotUnderstand: aMessage ].
	
	(self perform: #requestTypeForRemotePresentation: withArguments: {aMessage selector})
		ifNil: [ ^ super doesNotUnderstand: aMessage ]
		ifNotNil: [ :aRequestType |
			aRequestType = #glamour ifTrue: [ 
				^ self 
					perform: #glamourPresentationFor:using:withArguments:
					withArguments: { #targetObject . aMessage selector . aMessage arguments} ].
			aRequestType = #inspector ifTrue: [ 
				^ self 
					perform: #inspectorPresentationFor:using:on:
					withArguments: { #targetObject . aMessage selector . aMessage arguments first }  ].
			 ^ super doesNotUnderstand: aMessage ]