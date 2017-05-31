*GtGs-Inspector-Pharo-Core
buildRemoteInspectorProxyFrom: aString withRunner: anOopType
	^ self 
		buildRemoteInspectorProxyFromSelector: #evaluateStringAndBuildProxyFor: 
		withArguments: { aString } 
		withRunner: anOopType
	
