*GtGs-Inspector-Pharo-Core
requestFromGemstoneFor: aSelector
	self flag: #experimental.
	^ self gemstoneClient objectSerializer toString: (self glamourPresentation perform: aSelector)