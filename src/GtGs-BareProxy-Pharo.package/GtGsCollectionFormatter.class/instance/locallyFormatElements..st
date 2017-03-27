private - execution
locallyFormatElements: anArray

	^ self localFormatBlock 
		ifNil: [ anArray ]
		ifNotNil: [ :aFormatBlock | anArray collect: aFormatBlock ]