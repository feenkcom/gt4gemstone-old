tests - api
testBareProxyClientInvalidArgument
	
	self should: [ self client buildRemoteBareProxyFrom: Object new ] raise: Error.
	self should: [ self client buildRemoteBareProxyFrom: nil ] raise: Error.