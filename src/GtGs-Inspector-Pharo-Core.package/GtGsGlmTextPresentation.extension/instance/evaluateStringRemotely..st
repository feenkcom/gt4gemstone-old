*GtGs-Inspector-Pharo-Core
evaluateStringRemotely: aString

	^ self gemstoneClient evaluateStringRemotely: aString withRunner: self selfOopType