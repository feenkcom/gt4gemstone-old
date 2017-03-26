tests - arguments
testPrimitiveTypesAsStringArgument
	
	self assert: 42 gtGsAsBlockStringArgument equals: '42'.
	self assert: 4.2 gtGsAsBlockStringArgument equals: '4.2'.
	self assert: nil gtGsAsBlockStringArgument equals: 'nil'.
	self assert: true gtGsAsBlockStringArgument equals: 'true'.
	self assert: false gtGsAsBlockStringArgument equals: 'false'.
	self assert: $x gtGsAsBlockStringArgument equals: '$x'.
	self assert: (1/2) gtGsAsBlockStringArgument equals: '(1/2)'.
	self assert: #symbol gtGsAsBlockStringArgument equals: '#symbol'.
	self assert: #[2r1010 8r333 16rFF] gtGsAsBlockStringArgument equals: '#[10 219 255]'.
	self assert: #[10 219 255] gtGsAsBlockStringArgument equals: '#[10 219 255]'.
	self assert: 'Ûÿ' gtGsAsBlockStringArgument equals: '''Ûÿ'''.
	self assert: #[219 255] asWideString gtGsAsBlockStringArgument equals: '''Ûÿ'''.
	self 
		assert: 'a string' gtGsAsBlockStringArgument 
		equals: '''a string'''.
