accessing
detailedDescription

	^ String 
		streamContents: [ :aStream | self printDetailedDescriptionOn: aStream ]