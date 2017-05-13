accessing
clientDetails
	^ self clientHash asString, ' [', (self clientStartTime asString), ']'.