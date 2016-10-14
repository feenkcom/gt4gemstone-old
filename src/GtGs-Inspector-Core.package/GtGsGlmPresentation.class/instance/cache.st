accessing - cache
cache
	^ cache ifNil: [ 
		"An actual LRU cache could be used here."
		cache := Dictionary new ]