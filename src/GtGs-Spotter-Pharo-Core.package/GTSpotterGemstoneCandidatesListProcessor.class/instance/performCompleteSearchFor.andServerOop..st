searching
performCompleteSearchFor: aQuery andServerOop: aTopezServerOop

	^ ([ :topezOop :searchQuery :candidatesBlockString :formatBlockString |
			|candidatesBlock formattedQuery formatBlock possibleCandidates|
			candidatesBlock := candidatesBlockString evaluate.
			formatBlock := formatBlockString ifNotNil: [ formatBlockString evaluate ].
			
			possibleCandidates := candidatesBlock cull: (Object _objectForOop: topezOop).
			possibleCandidates := formatBlock 
				ifNil: [ possibleCandidates asArray ] 
				ifNotNil: [ possibleCandidates asArray collect: [ :each | formatBlock value: each ] ].
			searchQuery = nil ifFalse: [ 
				formattedQuery := searchQuery asLowercase.
				possibleCandidates := possibleCandidates select: [ :each | 
					(each asLowercase findString: formattedQuery startingAt: 1) > 0 ] ].
			possibleCandidates
		] gtGsBarePerformRemotelyOn: self gemstoneClient withArguments: 
			{ 
				aTopezServerOop.
		 		aQuery.
				gemstoneAllCandidatesBlock sourceNode formattedCode.
				gemstoneItemNameBlock ifNotNil: [ :aBlock | aBlock sourceNode formattedCode ]
			} ) gtGsAsInspectorProxy.	
							