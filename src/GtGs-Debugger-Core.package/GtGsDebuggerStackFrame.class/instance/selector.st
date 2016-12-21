accessing
selector
	^ cachedSelector ifNil: [ cachedSelector := super selector ]