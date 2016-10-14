accessing - topez
topezInspectorProxyCache
	"| topezInstanceMap |
	
	topezInstanceMap := self topezServer class concreteClass instanceMap."
	^ SessionTemps current
		at: #'GtGs_Inspector_ProxyCache'
		ifAbsent: [ SessionTemps current at: #'GtGs_Inspector_ProxyCache' put: Dictionary new].
	