instance creation
newAcceptButtonFor: aSessionDescription

	^ self newActionButton
		hintTitle: 'Create session and login.';
		hintText: 'Create a new session based on this session description.';
		icon: Smalltalk ui icons add;
		action: [ : b | self remove. self announce: #createSession event: aSessionDescription. ]