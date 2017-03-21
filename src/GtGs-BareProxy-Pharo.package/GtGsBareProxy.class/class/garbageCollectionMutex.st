gc api
garbageCollectionMutex
	^ garbageCollectionMutex ifNil: [ 
			garbageCollectionMutex := Mutex new]