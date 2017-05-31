*GtGs-Inspector-Pharo-Core
buildRemoteInspectorProxyFrom: aString inContext: aContextArgument 
	^ self 
		buildRemoteInspectorProxyFromSelector: #evaluateStringAndBuildProxyFor:inContext:
		withArguments: { aString . aContextArgument }
		withRunner: self todeServerOopType
