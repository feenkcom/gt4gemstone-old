extensions
gtGsSpotterForUsersFor: aStep
	<spotterOrder: 15>
	aStep listProcessor
		title: 'Users';
		itemName: [ :aUser | aUser userId ];
		allCandidates: [ 
			(GsCurrentSession currentSession symbolList objectNamed: #'System') users ]";
		filter: GTFilterSubstring;
		itemIcon: #systemIcon;
		keyBinding: $b meta;
		wantsToDisplayOnEmptyQuery: false"