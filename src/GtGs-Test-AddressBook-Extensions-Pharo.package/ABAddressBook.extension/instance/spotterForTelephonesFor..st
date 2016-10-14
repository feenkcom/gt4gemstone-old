*GtGs-Test-AddressBook-Extensions-Pharo
spotterForTelephonesFor: aStep
	<spotterOrder: 15>
	^ aStep listProcessor 
		title: 'Telephones';
		allCandidates: [ self contacts collect: [ :aContact | aContact address telephone ] ];
		matchSubstrings