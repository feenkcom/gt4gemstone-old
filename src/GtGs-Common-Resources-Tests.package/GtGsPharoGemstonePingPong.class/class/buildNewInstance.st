as yet unclassified
buildNewInstance
	^ self new 	
		setOop;
		initializeForwarder;
		updateTopezServer;
		asSerializedString