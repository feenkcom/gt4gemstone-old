*GtGs-Inspector-Pharo-Core
requestFromGemstoneFor: aSelector

	^ self gemstoneClient objectSerializer toString: (self glamourPresentation perform: aSelector)