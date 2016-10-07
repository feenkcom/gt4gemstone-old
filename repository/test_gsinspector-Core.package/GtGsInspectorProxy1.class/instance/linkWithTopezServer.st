initialization
linkWithTopezServer
	
	"self topezServer ifNotNil: [ ^ self ]."
	
	"Add the current proxy into the SessionTemps to prevent its garbage collection. "
	self topezInspectorProxyCache at: self asOop put: self.