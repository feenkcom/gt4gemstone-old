*GtGs-Inspector-Pharo-Core
openRemoteInspectorOn: aSerializedInspectorProxy
	(self materializeInspectorProxyFrom: aSerializedInspectorProxy) inspect.
	^ true