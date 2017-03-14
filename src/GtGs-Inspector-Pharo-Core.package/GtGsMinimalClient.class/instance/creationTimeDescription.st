accessing
creationTimeDescription
	^ String 
			streamContents: [ :aStream | self printCreationTimeOn: aStream ]
	