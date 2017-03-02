updating
updateTitleCache
	| titleValue |
	
	titleValue := self titleBlock value.
	self cacheAt: #'title' put: titleValue.