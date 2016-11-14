as yet unclassified
inspectorVariableNodes

	^ inspectorVariableNodes ifNil: [ 
		inspectorVariableNodes := self buildInspectorVariableNodes ]