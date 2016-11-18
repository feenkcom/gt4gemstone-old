actions
addToSessionTemps
	| cache |
	cache := SessionTemps current
		at: #'GtGs_DebuggerSession_ProxyCache'
		ifAbsent: [ SessionTemps current at: #'GtGs_DebuggerSession_ProxyCache' put: Dictionary new].
	cache at: self asOop put: self.