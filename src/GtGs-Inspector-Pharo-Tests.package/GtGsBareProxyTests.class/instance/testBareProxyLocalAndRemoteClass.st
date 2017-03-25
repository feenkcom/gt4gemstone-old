tests
testBareProxyLocalAndRemoteClass
	| bareProxy |
	
	bareProxy := self client buildRemoteBareProxyFrom: 'Object new'.
	
	self assert: bareProxy class equals: GtGsBareProxy.
	self assert: bareProxy remoteClass name gtDisplayString equals: '#Object'.