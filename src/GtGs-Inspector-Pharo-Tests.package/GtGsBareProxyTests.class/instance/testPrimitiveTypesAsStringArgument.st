tests - arguments
testPrimitiveTypesAsStringArgument
	
	self assert: 42 gtGsAsBlockStringArgument equals: '42'.
	self assert: 4.2 gtGsAsBlockStringArgument equals: '4.2'.
	self assert: nil gtGsAsBlockStringArgument equals: 'nil'.
	self assert: true gtGsAsBlockStringArgument equals: 'true'.
	self assert: false gtGsAsBlockStringArgument equals: 'false'.
	self assert: (1/2) gtGsAsBlockStringArgument equals: '(1/2)'.
	self assert: #symbol gtGsAsBlockStringArgument equals: '#symbol'.
	self 
		assert: 'a string' gtGsAsBlockStringArgument 
		equals: '''a string'''.
