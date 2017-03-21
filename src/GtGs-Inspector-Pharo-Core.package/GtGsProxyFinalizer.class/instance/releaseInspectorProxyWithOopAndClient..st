private
releaseInspectorProxyWithOopAndClient: aTwoElementsArray
	| inspectorProxyOop gemstoneClient |
	
	inspectorProxyOop := aTwoElementsArray first.
	gemstoneClient    := aTwoElementsArray second.
	
	gemstoneClient isActive ifTrue: [ 
		('releaseInspectorProxyWithOopAndClient:', inspectorProxyOop asString) logCr.
		gemstoneClient 
			send: #removeFromTopezCache
			to: (gemstoneClient session asOopType: inspectorProxyOop) ]