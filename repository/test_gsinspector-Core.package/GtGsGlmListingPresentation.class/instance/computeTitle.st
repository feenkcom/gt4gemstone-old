callbacks
computeTitle
	| titleValue |
	titleValue := self titleBlock value.
	self cacheAt: #'title' put: titleValue.
	^ self serializer toString: titleValue
	