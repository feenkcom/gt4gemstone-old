as yet unclassified
buildVariables: names withType: aString

	^ names 
		collect: [ :variableName || targetObject variableNode |
			variableNode := GtGsDebuggerInspectorVariableNode new
				variableName: variableName;
				type: aString.
			targetObject := self 
				objectFor: variableName 
				ifAbsent: [ variableNode formattedValue: 'missing element'. nil ].
			variableNode targetObject: targetObject ].