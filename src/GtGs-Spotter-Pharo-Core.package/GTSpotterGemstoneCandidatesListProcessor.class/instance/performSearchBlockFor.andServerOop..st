searching
performSearchBlockFor: aQuery andServerOop: aTopezServerOop

	^ ([ :topezOop :searchQuery :candidatesBlockString |
			|candidatesBlock possibleCandidates|
			candidatesBlock := candidatesBlockString evaluate.
			possibleCandidates := candidatesBlock cull: (Object _objectForOop: topezOop) cull: searchQuery.
			possibleCandidates
		] gtGsBarePerformRemotelyOn: self gemstoneClient withArguments: 
			{ 
				aTopezServerOop .
		 		aQuery .
				gemstoneItemsBlock sourceNode formattedCode
			} ) gtGsAsInspectorProxy