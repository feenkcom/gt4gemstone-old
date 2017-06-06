updating
updateCachedSelector
	self frameContents ifNil: [ ^ self ].
	cachedSelector := self homeMethod selector