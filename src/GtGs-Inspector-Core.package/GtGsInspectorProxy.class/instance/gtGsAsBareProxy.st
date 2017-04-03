converting - proxy
gtGsAsBareProxy
	"I convert this proxy to a bare proxy. I use the API provided by the client so that
	garbage collection is enabled for the created bare proxy. Hence, garbage collection
	is handeled independently for the created bare proxy and for this proxy."
	
	^ self gemstoneClient 
		 buildRemoteBareProxyFrom: '(Object _objectForOop: ', self targetObjectOopType asString, ')'