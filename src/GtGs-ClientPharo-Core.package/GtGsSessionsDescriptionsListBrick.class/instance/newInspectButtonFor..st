instance creation
newInspectButtonFor: aSessionDescription

	^ self newActionButton
		hintTitle: 'Inspect';
		hintText: 'Opens a new inspector window on this session description.';
		icon: Smalltalk ui icons glamorousInspect;
		action: [ : b | self remove. self announce: #inspectDescription event: aSessionDescription. ]