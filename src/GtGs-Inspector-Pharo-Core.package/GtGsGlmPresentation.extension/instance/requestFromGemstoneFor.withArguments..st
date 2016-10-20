*GtGs-Inspector-Pharo-Core
requestFromGemstoneFor: aSelector withArguments: anArray
	self flag: #experimental.
	^ self gemstoneClient objectSerializer toString: (self glamourPresentation 
		perform: aSelector
		withArguments: ( anArray collect: [ :aSTON | self self gemstoneClient objectSerializer fromString: aSTON ]))