as yet unclassified
updateCache
	super updateCache.
	
	self shouldAttachCodeExecutionActions ifTrue: [
		self cacheAt: #className put: self proxyOwner targetObject class name ] 