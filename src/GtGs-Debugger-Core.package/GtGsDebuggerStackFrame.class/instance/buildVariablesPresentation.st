private
buildVariablesPresentation
	"I am not used anywhere. I was an experiment that is currenty on hold."
	^ GtGsGlmTablePresentation new 
		title: [ 'Context' ];
		display: [ self inspectorVariableNodes ];
		column: [ 'Variable' ] evaluated: [ :anAssociation | anAssociation key ];
		column: [ 'Value' ] evaluated: [ :anAssociation | anAssociation value gtGsInspectorName ];
		send: [ :anAssociation | anAssociation value ]