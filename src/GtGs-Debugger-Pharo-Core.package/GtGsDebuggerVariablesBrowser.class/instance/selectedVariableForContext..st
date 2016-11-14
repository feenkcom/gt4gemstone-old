as yet unclassified
selectedVariableForContext: aContext 
	|variablesMappings|
	
	variablesMappings := self variablesFromContext: aContext.
	^ variablesMappings 
		detect: [ :each | each variableName = self debugger selectedVariableName ] 
		ifNone: [ variablesMappings detect: [ :each | each variableName = '(self)' ] ifNone: [ nil ] ]