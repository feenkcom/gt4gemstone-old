as yet unclassified
gtSpotterGemstoneUsersProcessorOn: aStep
	<spotterOrder: 5>
	aStep listProcessor
		title: (self formatProcessorTitle: 'Users');
		itemName: [ :name | name ];
		actLogic: [ :item :step |
			step exit.
			(self gemstoneClient buildRemoteInspectorProxyFrom: 
				'(GsCurrentSession currentSession symbolList objectNamed: #''System'') users 
					userWithId: ',item printString,' ifAbsent: [ nil ] ' ) inspect ];
		allCandidates: [ 
			self gemstoneClient onServerDo: [  
				(GsCurrentSession currentSession symbolList objectNamed: #'System') users asArray collect: [ :aUser |
					aUser userId  ] ] ];
		wantsToDisplayOnEmptyQuery: true	