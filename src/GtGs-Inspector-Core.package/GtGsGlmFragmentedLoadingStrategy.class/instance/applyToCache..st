as yet unclassified
applyToCache: aDisplayValueCache
	| maxIndex |
	
	"Ensure capacity for the cache."
	maxIndex := 1.
	diff do: [ :assoc | assoc key > maxIndex ifTrue: [ maxIndex := assoc key ] ].
	aDisplayValueCache size + 1 to: maxIndex do: [ :index |
		aDisplayValueCache add: nil ].
	
	diff do: [ :assoc |
		aDisplayValueCache at: assoc key put: assoc value ]