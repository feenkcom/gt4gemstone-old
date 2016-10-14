callbacks
computeTitle
	self updateTitleCache.
	^ self serializer toString: (self cacheAt: #'title')
	