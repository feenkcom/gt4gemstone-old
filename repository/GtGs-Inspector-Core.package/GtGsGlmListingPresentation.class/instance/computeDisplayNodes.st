callbacks
computeDisplayNodes
	self updateDisplayNodes.
	^ self serializer toString: (self cacheAt: #'displayNodes')
	