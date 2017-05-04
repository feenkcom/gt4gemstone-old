private
releaseRemoteToolWithOopAndClient: aTwoElementsArray
	"I remove the remote object having the given details by sending it a dedicated message.
	It is the responsability of the remote object to remove itself from any kind of storage
	that keeps a reference to it on the remote side, so that it can be garbage collected."
	| inspectorProxyOop gemstoneClient |
	
	inspectorProxyOop := aTwoElementsArray first.
	gemstoneClient    := aTwoElementsArray second.
	
	gemstoneClient isActive ifTrue: [ 
		gemstoneClient 
			send: #removeFromSessionStorage
			to: (gemstoneClient session asOopType: inspectorProxyOop) ]