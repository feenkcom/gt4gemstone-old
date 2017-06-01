private
materializeInspectorProxyFrom: serializedProxy
	| materializedProxy |
	
	materializedProxy := self objectSerializer fromString: serializedProxy.
	materializedProxy gemstoneClient: self.
	^ self proxyFinalizer registerForGarbageCollectionRemoteTool: materializedProxy