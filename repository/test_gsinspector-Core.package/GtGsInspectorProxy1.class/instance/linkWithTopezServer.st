initialization
linkWithTopezServer
	
	self topezServer ifNotNil: [ ^ self ].
	topezServer := (Smalltalk at: #TDTopezServer) for: 1.
	
	"Add the current proxy into the SessionTemps to prevent its garbage collection. "
	self topezInspectorProxyCache at: self asOop put: self.