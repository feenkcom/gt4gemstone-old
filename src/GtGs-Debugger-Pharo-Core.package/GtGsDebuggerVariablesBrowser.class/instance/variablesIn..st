as yet unclassified
variablesIn: composite
	^ composite table
		showOnly: 50;
		shouldValidate: false;
		allowsRecursiveSearch: false;
		display: [ :context | self variablesFromContext: context ];
		column: 'Type'
			evaluated: [ '' ]
			width: 75
			tags: [ :variableNode | variableNode type ]
			sortedBy: [ :x :y | 
				x type < y type ];
		column: 'Variable' 
			evaluated: [ :variableNode | variableNode variableName ]
			width: 175;
		column: 'Value' 
			evaluated: [ :variableNode | variableNode formattedValue ];
		onChangeOfPort: #rawSelection 
			act: [ :aPresentation | 
				self debugger selectedVariableName: aPresentation rawSelection variableName ]
		