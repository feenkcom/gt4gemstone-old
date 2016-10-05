accessing - cache
cache
	^ self cache ifNil: [ 
		"An actual LRU cache could be used here."
		cache := Dictionary new ]