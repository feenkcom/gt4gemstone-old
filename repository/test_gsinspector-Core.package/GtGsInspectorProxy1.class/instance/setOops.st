config
setOops

	self targetObjectOop ifNil: [ targetObjectOop := Reflection oopOf: self targetObject ]