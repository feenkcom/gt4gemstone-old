instance creation
newAcceptButtonFor: aSessionDescription

	^ self newActionButton
		hintTitle: 'Create session';
		hintText: 'Create a new session using this session description';
		icon: Smalltalk ui icons add;
		action: [ : b | self remove. self announce: #createSession event: aSessionDescription. ]