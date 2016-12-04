as yet unclassified
gtInspectorDetailsIn: composite
	<gtInspectorPresentationOrder: -1>
	composite table
		title: 'Details';
		display: [ self gtInspectorDetails ];
		column: 'Property' evaluated: #key width: 150;
		column: 'Value' evaluated: #value;
		send: #value