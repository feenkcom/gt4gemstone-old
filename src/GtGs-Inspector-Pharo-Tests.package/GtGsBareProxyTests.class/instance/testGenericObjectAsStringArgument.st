tests - arguments
testGenericObjectAsStringArgument
	
	self assert: Object new gtGsBareAsBlockStringArgument equals: 'nil'.
	self assert: Object gtGsBareAsBlockStringArgument equals: 'nil'.
	self assert: Morph new gtGsBareAsBlockStringArgument equals: 'nil'.
