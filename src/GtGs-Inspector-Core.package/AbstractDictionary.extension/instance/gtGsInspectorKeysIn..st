*GtGs-Inspector-Core
gtGsInspectorKeysIn: composite
	<gtInspectorPresentationOrder: 1>

	^ composite fastList
		title: 'Keys';
		enableLazyLoading;
		display: [ | aCollection |
  			aCollection := Array new.
			self keysDo: [ :aKey | aCollection add: aKey ].
			aCollection ]