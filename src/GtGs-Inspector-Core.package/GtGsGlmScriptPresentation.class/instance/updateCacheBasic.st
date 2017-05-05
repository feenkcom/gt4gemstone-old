updating
updateCacheBasic
	super updateCacheBasic.
	
	self shouldAttachCodeExecutionActions ifTrue: [
		self cacheAt: #className put: self proxyOwner targetObject class name ]