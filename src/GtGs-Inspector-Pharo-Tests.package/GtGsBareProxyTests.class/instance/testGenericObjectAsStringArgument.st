tests - arguments
testGenericObjectAsStringArgument
	
	self assert: Object new gtGsAsBlockStringArgument equals: 'nil'.
	self assert: Object gtGsAsBlockStringArgument equals: 'nil'.
	self assert: Morph new gtGsAsBlockStringArgument equals: 'nil'.
