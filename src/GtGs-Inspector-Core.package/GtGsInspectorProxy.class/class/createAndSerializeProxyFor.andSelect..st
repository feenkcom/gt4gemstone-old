instance-creation
createAndSerializeProxyFor: anObject andSelect: aPresentationTitle
	
	^ (self forObject: anObject) 
			updateFull: aPresentationTitle;
			asTopazSerializedString
		