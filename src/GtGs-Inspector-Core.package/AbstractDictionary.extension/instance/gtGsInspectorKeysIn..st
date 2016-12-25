*GtGs-Inspector-Core
gtGsInspectorKeysIn: composite
	<gtInspectorPresentationOrder: 1>

	^ composite fastList
		title: 'Keys';
		enableLazyLoading;
		display: [ self keys ]