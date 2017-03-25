tests - api
testBareProxyFromBlockWithArguments
	| classProxy bareProxy |
	
	classProxy := [ GtGsTestObjectBasic ] gtGsBarePerformRemotelyOn: self client.
	bareProxy := [ :class :number | GtGsTestObjectBasic newWithX: class y: number z: nil w: nil ] 
		gtGsBarePerformRemotelyOn: self client
		withArguments: { classProxy . 42 }.
	
	self assert: bareProxy x selfOop equals: classProxy selfOop.
	self assert: bareProxy y equals: 42.
	self assert: bareProxy remoteClass name equals: #GtGsTestObjectBasic.