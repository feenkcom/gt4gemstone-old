private
releaseRemoteToolWithOopAndSession: aTwoElementsArray
	"I remove the remote object having the given details by sending it a dedicated message.
	It is the responsability of the remote object to remove itself from any kind of storage
	that keeps a reference to it on the remote side, so that it can be garbage collected.
	I only remove the object if its associated session is still active."
	| inspectorProxyOop registeredSession |
	
	inspectorProxyOop := aTwoElementsArray first.
	registeredSession := aTwoElementsArray second.
	
	(registeredSession notNil and: [ 
		registeredSession isSessionValid ]) ifTrue: [ 
		registeredSession 
			send: #removeFromSessionStorage
			to: (registeredSession asOopType: inspectorProxyOop) ]