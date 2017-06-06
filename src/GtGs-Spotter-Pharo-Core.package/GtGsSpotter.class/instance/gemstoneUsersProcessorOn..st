as yet unclassified
gemstoneUsersProcessorOn: aStep
	<spotterOrder: 4>
	aStep gemstoneListProcessor
		title: 'Users';
		itemName: [ :name | name copyFrom: 2 to: name size - 1 ];
		filter: GTFilterSubstring item: [ :filter :context ||inspectorProxy list |
			inspectorProxy := ([ :query | |allUsers result|
				
				allUsers := (GsCurrentSession currentSession symbolList objectNamed: #'System') users asArray.
				result := (query = nil 
					ifTrue: [ allUsers ]
					ifFalse: [ (allUsers 
						select: [ :aUser | (aUser userId asLowercase findString: query startingAt: 1) > 0 ]) ]).
				result collect: [ :aUser | aUser userId ]
				
				] gtGsBarePerformRemotelyOn: self with: (
						context text ifEmpty: [ nil ] ifNotEmpty: [ :text2 | text2 asLowercase ] ) ) gtGsAsInspectorProxy .	
			list := (inspectorProxy  
				remoteInspectorPresentationFor: #targetObject
				using: #gtGsSpotterItemsIn:).
			
			context processor totalNumberOfElements: list obtainTotalNumberOfElements.
			list cachedDisplayValue do: [ :each | filter value: each formattedValue ] ];
		wantsToDisplayOnEmptyQuery: true	