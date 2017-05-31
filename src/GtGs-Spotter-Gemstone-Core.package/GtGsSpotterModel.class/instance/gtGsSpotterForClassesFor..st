extensions
gtGsSpotterForClassesFor: aStep
	<spotterOrder: 10>
	aStep listProcessor
		title: 'Classes';
		itemName: [ :aClass | aClass name ];
		allCandidates: [ 
			GsCurrentSession currentSession symbolList allSatisfying: [ :each | each isBehavior ] ]";
		filter: GTFilterSubstring;
		itemIcon: #systemIcon;
		keyBinding: $b meta;
		wantsToDisplayOnEmptyQuery: false"