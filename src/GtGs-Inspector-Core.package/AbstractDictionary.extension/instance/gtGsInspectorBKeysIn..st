*GtGs-Inspector-Core
gtGsInspectorBKeysIn: composite
	<gtInspectorPresentationOrder: 1>

	^ composite fastList
		title: 'Keys';
		enableLazyLoading;
		display: [ self ];
		iterator: [ GtGsInspectorPluggableCollectionIterator new
			iterationSelector: #keysDo: ]
		"display: [ | aCollection |
  			aCollection := Array new.
			self keysDo: [ :aKey | aCollection add: aKey ].
			aCollection ]"