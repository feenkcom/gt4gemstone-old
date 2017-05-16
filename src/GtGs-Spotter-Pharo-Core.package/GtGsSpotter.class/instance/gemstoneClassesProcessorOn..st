as yet unclassified
gemstoneClassesProcessorOn: aStep
	<spotterOrder: 1>
	aStep gemstoneListProcessor
		title: 'Classes';
		itemName: [ :name | name ];
		gemstoneAllCandidates: [ :topezServer | topezServer gtGsSystemNavigation classOrganizer classes ];
		filter: GTFilterSubstring item: [ :filter :context ||inspectorProxy list |
			inspectorProxy := ([ :query |
				query = nil 
					ifTrue: [ GsCurrentSession currentSession symbolList allSatisfying: [ :each | each isBehavior ] ]
					ifFalse: [ 
						GsCurrentSession currentSession symbolList allSatisfying: [ :each | each isBehavior 
							and: [ (each name asLowercase findString: query startingAt: 1) > 0 ] ] ]
				] gtGsBarePerformRemotelyOn: self with: (
						context text ifEmpty: [ nil ] ifNotEmpty: [ :text2 | text2 asLowercase ] ) ) gtGsAsInspectorProxy .	
			list := (inspectorProxy  
				remoteInspectorPresentationFor: #targetObject
				using: #gtGsSpotterClassesIn:).
			
			context processor totalNumberOfElements: list obtainTotalNumberOfElements.
			list cachedDisplayValue do: [ :each | filter value: each formattedValue ] ];
		wantsToDisplayOnEmptyQuery: true	