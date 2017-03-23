private
proxyFinalizer
	^ proxyFinalizer ifNil: [ proxyFinalizer := GtGsProxyFinalizer new ]