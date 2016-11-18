accessing
inspectorVariableNodes

	^ inspectorVariableNodes ifNil: [ 
		inspectorVariableNodes := self buildInspectorVariableNodes ]