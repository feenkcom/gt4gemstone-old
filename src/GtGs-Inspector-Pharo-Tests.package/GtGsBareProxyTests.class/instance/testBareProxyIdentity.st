tests
testBareProxyIdentity
	| bareProxy1 bareProxy2 |
	
	bareProxy1 := self client buildRemoteBareProxyFrom: 'GtGsTestObjectBasic newTestInstanceWithX: 1 y: 2 z: 3 w: 4'.
	bareProxy2 := self client buildRemoteBareProxyFrom: 'GtGsTestObjectBasic testInstance'.
	
	self 
		deny: bareProxy1 == bareProxy2  
		description: 'Requesting two proxies for the same remote object should result in different objects.'. 
	self 
		deny: bareProxy1 = bareProxy2  
		description: 'Two proxies for the same object are not equal.'. 
	self 
		deny: bareProxy1 hash = bareProxy2 hash.
		
	self assert: bareProxy1 selfOop equals: bareProxy2 selfOop.
	self assert: bareProxy2 selfOopType equals: bareProxy2 selfOopType
	