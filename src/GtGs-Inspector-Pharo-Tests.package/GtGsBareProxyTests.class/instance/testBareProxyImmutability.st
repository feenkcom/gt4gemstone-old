tests
testBareProxyImmutability
	| bareProxy |
	
	bareProxy := self client buildRemoteBareProxyFrom: 'GtGsTestObjectBasic newTestInstanceWithX: 1 y: 2 z: 3 w: 4'.
	
	self should: [ bareProxy gemstoneClient: self client ] raise: Error.
	self should: [ bareProxy selfOop: 1 ] raise: Error.
	self should: [ bareProxy selfOopType: (GsGciOopType fromInteger: bareProxy selfOop) ] raise: Error.