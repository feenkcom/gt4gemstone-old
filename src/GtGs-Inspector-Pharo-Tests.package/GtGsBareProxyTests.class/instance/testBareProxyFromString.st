tests - api
testBareProxyFromString
	| bareProxy |
	
	bareProxy := 'GtGsTestObjectBasic newWithX: 1 y: 2 z: 3 w: 4' gtGsBarePerformRemotelyOn: self client.
	
	self assert: bareProxy x equals: 1.
	self assert: bareProxy y equals: 2.
	self assert: bareProxy remoteClass name equals: #GtGsTestObjectBasic.