accessing - topez
topezInspectorProxyCache
	| topezInstanceMap |
	
	topezInstanceMap := self topezServer concreteClass instanceMap.
	^ topezInstanceMap
		at: #'GtGs_Inspector_ProxyCache'
		ifAbsent: [ topezInstanceMap at: #'GtGs_Inspector_ProxyCache' put: Dictionary new].
	