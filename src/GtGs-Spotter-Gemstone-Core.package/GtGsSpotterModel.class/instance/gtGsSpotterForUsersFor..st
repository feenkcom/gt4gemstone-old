extensions
gtGsSpotterForUsersFor: aStep
	<spotterOrder: 15>
	aStep listProcessor
		title: 'Users';
		itemName: [ :aUser | aUser ];
		allCandidates: [ 
			(GsCurrentSession currentSession symbolList objectNamed: #'System') users asArray collect: [ :aUser |
				aUser userId ] ]";
		filter: GTFilterSubstring;
		itemIcon: #systemIcon;
		keyBinding: $b meta;
		wantsToDisplayOnEmptyQuery: false"