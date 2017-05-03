accessing - cache
cache
	"I return a cache that can be used to store and pass values to the Pharo side. 
	Since I am a cache I should only be used for values that can be recomputed if
	the cache is cleared. For storing configuration options see #parameters."
	
	^ cache ifNil: [ 
		"An actual LRU cache could be used here."
		cache := Dictionary new ]