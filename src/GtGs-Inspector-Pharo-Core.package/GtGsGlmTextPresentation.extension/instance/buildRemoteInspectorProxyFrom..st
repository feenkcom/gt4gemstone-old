*GtGs-Inspector-Pharo-Core
buildRemoteInspectorProxyFrom: aString

	^ self gemstoneClient buildRemoteInspectorProxyFrom: aString withRunner: self selfOopType