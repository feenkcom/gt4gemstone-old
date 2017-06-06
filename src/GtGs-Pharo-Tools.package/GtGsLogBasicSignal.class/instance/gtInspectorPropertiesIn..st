ui
gtInspectorPropertiesIn: composite
	<gtInspectorPresentationOrder: 11>
	composite fastTable
		title: 'Properties';
		display: [ self properties associations sorted: [ :a :b | a key < b key ] ];
		column: 'Property' evaluated: #key width: 150;
		column: 'Value' evaluated: [:assoc | GTObjectPrinter new asTruncatedTextFrom: assoc value ];
		send: #value