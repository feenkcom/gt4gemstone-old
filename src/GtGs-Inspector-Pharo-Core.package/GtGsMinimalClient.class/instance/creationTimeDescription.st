accessing
creationTimeDescription
	^ self isActive 
		ifTrue: [ String 
			streamContents: [ :aStream | self printCreationTimeOn: aStream ] ]
		ifFalse: [ '-' ]
	