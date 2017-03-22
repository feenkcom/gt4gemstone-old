instance creation
newRemoveButtonFor: aSessionDescription

	^ self newActionButton
		beError;
		hintTitle: 'Remove session description';
		hintText: 'Removes the file holding information about this session description from disk.';
		icon: Smalltalk ui icons glamorousTrash;
		action: [ : b | self remove. self announce: #removeDescription event: aSessionDescription. ]