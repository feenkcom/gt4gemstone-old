tests
testNoProxyForPrimitiveTypes
	
	self assert: (self client buildRemoteBareProxyFrom: 'nil') equals: nil.
	self assert: (self client buildRemoteBareProxyFrom: '1') equals: 1.
	self assert: (self client buildRemoteBareProxyFrom: 'true') equals: true.
	self assert: (self client buildRemoteBareProxyFrom: 'false') equals: false.
	self assert: (self client buildRemoteBareProxyFrom: '$c') equals: $c.
	self assert: (self client buildRemoteBareProxyFrom: '1.1') equals: 1.1.
	self assert: (self client buildRemoteBareProxyFrom: '1/2') equals: 1/2.
	self assert: (self client buildRemoteBareProxyFrom: '#[2r1010 8r333 16rFF]') equals: #[10 219 255].
	self assert: (self client buildRemoteBareProxyFrom: '#[10 219 255]') equals: #[10 219 255].
	self assert: (self client buildRemoteBareProxyFrom: '''a sting''') equals: 'a sting'.
	self assert: (self client buildRemoteBareProxyFrom: '#symbol') equals: #symbol.