as yet unclassified
clientDetails
	^ self clientHash asString, ' [', (self clientStartTime asString), ']'.