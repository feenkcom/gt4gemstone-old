private
garbageCollectionMutex
	^ garbageCollectionMutex ifNil: [ 
			garbageCollectionMutex := Mutex new]