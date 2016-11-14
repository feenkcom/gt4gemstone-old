as yet unclassified
buildVariables: names withType: aString

	^ names 
		collect: [ :variableName ||targetObject|
			targetObject := (self 
				objectFor: variableName 
				ifAbsent: [ nil ]).
			GtGsDebuggerInspectorVariableNode new
				variableName: variableName;
				type: aString;
				targetObject: targetObject ].