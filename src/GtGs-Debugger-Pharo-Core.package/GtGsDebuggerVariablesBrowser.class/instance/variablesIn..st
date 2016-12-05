private building
variablesIn: composite
	^ composite fastTable
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
		send: [ :variableNode | |serializedProxy|
			"self halt."
			serializedProxy := self debugger session gemstoneClient
				executeRemotely: #serializedInspectorProxyForTargetObject
				on: (self debugger session gemstoneClient session 
						asOopType: variableNode selfOop)
				withArguments: #().
			serializedProxy
					gemstoneClient: self debugger session gemstoneClient;
					yourself ];
		onChangeOfPort: #rawSelection 
			act: [ :aPresentation | 
				self debugger selectedVariableName: aPresentation rawSelection variableName ]
		
		"send: #value;"
		"morphicSelectionAct: [:list | list selection value browse ] 
			icon: GLMUIThemeExtraIcons glamorousBrowse 
			on: $b 
			entitled: 'Browse';
		morphicSelectionAct: [:list | list selection value inspect ] 
			icon: GLMUIThemeExtraIcons glamorousInspect 
			on: $i 
			entitled: 'Inspect';"
		