*GtGs-Inspector-Core
gtGsInspectorAATextIn: composite
	<gtInspectorPresentationOrder: -10>
	
	^ composite text
		title: 'String';
		display: [ self gtGsTruncateWithElipsisTo: 100000 ];
		format: [ :aString | aString ]