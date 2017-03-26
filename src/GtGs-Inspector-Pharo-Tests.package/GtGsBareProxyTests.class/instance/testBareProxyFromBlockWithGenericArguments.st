tests - api
testBareProxyFromBlockWithGenericArguments
	| result |
	
	result := [ :objectNil1 :objectNil2 | objectNil1 == nil and: [ objectNil2 == nil ] ] 
		gtGsBarePerformRemotelyOn: self client
		withArguments: { Object new. Object }.
	
	self assert: result.