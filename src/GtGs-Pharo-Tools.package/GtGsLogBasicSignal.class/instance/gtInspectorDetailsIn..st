ui
gtInspectorDetailsIn: composite
	<gtInspectorPresentationOrder: -1>
	^ composite fastTable
		title: 'Details';
		display: [ self gtInspectorDetails ];
		column: 'Property' evaluated: #key width: 150;
		column: 'Value' evaluated: [:assoc | GTObjectPrinter new asTruncatedTextFrom: assoc value ];
		send: #value