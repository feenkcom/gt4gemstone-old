private
releaseInspectorProxyWithOopAndClient: aTwoElementsArray
	| inspectorProxyOop gemstoneClient |
	
	inspectorProxyOop := aTwoElementsArray first.
	gemstoneClient    := aTwoElementsArray second.
	
	gemstoneClient isActive ifTrue: [ 
		gemstoneClient 
			send: #removeFromTopezCache
			to: (gemstoneClient session asOopType: inspectorProxyOop) ]