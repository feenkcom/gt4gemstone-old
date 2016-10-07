accessing - topez
topezInspectorProxyCache
	| topezInstanceMap |
	
	topezInstanceMap := self topezServer class concreteClass instanceMap.
	^ topezInstanceMap
		at: #'GtGs_Inspector_ProxyCache'
		ifAbsent: [ topezInstanceMap at: #'GtGs_Inspector_ProxyCache' put: Dictionary new].
	