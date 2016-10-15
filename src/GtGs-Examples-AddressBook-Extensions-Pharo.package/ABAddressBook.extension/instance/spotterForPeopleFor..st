*GtGs-Examples-AddressBook-Extensions-Pharo
spotterForPeopleFor: aStep
	<spotterOrder: 5>
	^ aStep listProcessor 
		title: 'People';
		allCandidates: [ self contacts ];
		filter: GTFilterSubstrings;
		candidatesLimit: 7;
		itemName: [ :aContact | aContact lastName asUppercase, ', ' , aContact firstName ]