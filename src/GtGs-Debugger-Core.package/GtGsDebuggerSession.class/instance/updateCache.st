actions
updateCache

	selfOop ifNil: [ selfOop := self asOop ].
	self stack updateCacheIn: self.