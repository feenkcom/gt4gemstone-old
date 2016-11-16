as yet unclassified
updateCache

	selfOop ifNil: [ selfOop := self asOop ].
	self stack updateCache.