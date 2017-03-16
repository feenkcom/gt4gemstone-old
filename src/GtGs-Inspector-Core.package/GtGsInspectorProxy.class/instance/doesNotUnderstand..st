reflective operations
doesNotUnderstand: aMessage
	self gtGsIsGemstone ifTrue: [ 
		^ super doesNotUnderstand: aMessage ].
	
	(self requestTypeForRemotePresentation: aMessage selector)
		ifNil: [ ^ super doesNotUnderstand: aMessage ]
		ifNotNil: [ :aRequestType |
			aRequestType = #glamour ifTrue: [ 
				^ self 
					glamourPresentationFor: #targetObject
					using: aMessage selector 
					withArguments: aMessage arguments ].
			aRequestType = #inspector ifTrue: [ 
				^ self 
					inspectorPresentationFor: #targetObject
					using: aMessage selector 
					on: aMessage arguments first ].
			 ^ super doesNotUnderstand: aMessage ]