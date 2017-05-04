callbacks
removeFromSessionStorage

	self temporarySessionStorage removeKey: self asOop ifAbsent: [ ^ false ].
	"Return a primitive type to prevent this object from being cached by GCI 
	if this request initiated on the Pharo side."
	^ true