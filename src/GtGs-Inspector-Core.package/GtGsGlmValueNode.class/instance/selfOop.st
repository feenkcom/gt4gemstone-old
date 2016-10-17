config
selfOop

	^ selfOop ifNil: [ selfOop := self asOop ].