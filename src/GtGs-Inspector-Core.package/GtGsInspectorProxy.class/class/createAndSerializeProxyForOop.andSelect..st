instance-creation
createAndSerializeProxyForOop: anOop andSelect: aPresentationTitle
	
	^ (self forOop: anOop) 
			updateFull: aPresentationTitle;
			asTopazSerializedString