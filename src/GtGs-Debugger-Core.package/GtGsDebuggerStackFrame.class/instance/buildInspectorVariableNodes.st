as yet unclassified
buildInspectorVariableNodes
	| currentNodes |
	currentNodes := OrderedCollection new.
	currentNodes addAll: (self elementNodeNames 
		collect: [ :variableName ||targetObject|
			targetObject := (self objectFor: variableName 
					ifAbsent: [ nil ]).
			GtGsDebuggerInspectorVariableNode new
				variableName: variableName;
				type: 'todo';
				formattedValue: (targetObject 
					ifNotNil: [ targetObject gtGsInspectorName ]
					ifNil: [ 'missing element' ]);
				targetObject: targetObject ]).
	^ currentNodes