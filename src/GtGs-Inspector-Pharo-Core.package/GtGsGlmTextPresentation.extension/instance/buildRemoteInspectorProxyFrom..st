*GtGs-Inspector-Pharo-Core
buildRemoteInspectorProxyFrom: aString

	^ self gemstoneClient buildRemoteInspectorProxyFrom: aString inContext: self selfOopType