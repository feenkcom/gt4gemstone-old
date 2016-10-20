*GtGs-Inspector-Pharo-Core
requestFromGemstoneWithoutSerializedReturnFor: aSelector withArguments: anArray
	self flag: #experimental.
	^ self glamourPresentation 
		perform: aSelector
		withArguments: (self gemstoneClient objectSerializer fromString: anArray)