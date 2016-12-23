private
buildVariablesPresentation

	^ GtGsGlmTablePresentation new 
		title: [ 'Context' ];
		display: [ self inspectorVariableNodes ];
		column: [ 'Variable' ] evaluated: [ :anAssociation | anAssociation key ];
		column: [ 'Value' ] evaluated: [ :anAssociation | anAssociation value gtGsInspectorName ];
		send: [ :anAssociation | anAssociation value ]