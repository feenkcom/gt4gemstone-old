tests - arguments
testPrimitiveTypesAsStringArgument
	
	self assert: 42 gtGsBareAsBlockStringArgument equals: '42'.
	self assert: 4.2 gtGsBareAsBlockStringArgument equals: '4.2'.
	self assert: nil gtGsBareAsBlockStringArgument equals: 'nil'.
	self assert: true gtGsBareAsBlockStringArgument equals: 'true'.
	self assert: false gtGsBareAsBlockStringArgument equals: 'false'.
	self assert: $x gtGsBareAsBlockStringArgument equals: '$x'.
	self assert: (1/2) gtGsBareAsBlockStringArgument equals: '(1/2)'.
	self assert: #symbol gtGsBareAsBlockStringArgument equals: '#symbol'.
	self assert: #[2r1010 8r333 16rFF] gtGsBareAsBlockStringArgument equals: '#[10 219 255]'.
	self assert: #[10 219 255] gtGsBareAsBlockStringArgument equals: '#[10 219 255]'.
	self assert: 'Ûÿ' gtGsBareAsBlockStringArgument equals: '''Ûÿ'''.
	self assert: #[219 255] asWideString gtGsBareAsBlockStringArgument equals: '''Ûÿ'''.
	self 
		assert: 'a string' gtGsBareAsBlockStringArgument 
		equals: '''a string'''.
