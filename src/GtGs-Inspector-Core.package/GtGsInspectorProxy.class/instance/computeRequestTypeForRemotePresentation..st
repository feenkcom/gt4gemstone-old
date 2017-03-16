reflective operations
computeRequestTypeForRemotePresentation: aSelector
	
	^ self topezServer objectSerializer toString: ((
		self targetObject gtGsLookupSelector: aSelector)
			ifNil: [ nil ]
			ifNotNil: [ :aMethod | 
				(self isMethodCreatingGlamourPresentation: aMethod) 
					ifTrue: [ #glamour ]
					ifFalse: [ (self isMethodCreatingInspectorPresentation: aMethod)
						ifTrue: [ #inspector ]
						ifFalse: [ nil ] ] ])