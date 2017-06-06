extensions
gtGsSpotterForClassesFor: aStep
	<spotterOrder: 10>
	aStep listProcessor
		allCandidates: [ 
			GsCurrentSession currentSession symbolList allSatisfying: [ :each | each isBehavior ] ];
		title: 'Classes'";
		filter: GTFilterSubstring;
		itemIcon: #systemIcon;
		keyBinding: $b meta;
		wantsToDisplayOnEmptyQuery: false"