as yet unclassified
setBlockOops

	self displayBlock ifNotNil: [ :block | displayBlockOop := block asOop ].
	self titleBlock ifNotNil: [ :block | titleBlockOop := block asOop ].