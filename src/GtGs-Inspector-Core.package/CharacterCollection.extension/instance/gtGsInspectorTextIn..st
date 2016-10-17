*GtGs-Inspector-Core
gtGsInspectorTextIn: composite
	<gtInspectorPresentationOrder: -10>
	
	composite text
		title: 'String';
		display: [ self truncateWithElipsisTo: 100000 ]