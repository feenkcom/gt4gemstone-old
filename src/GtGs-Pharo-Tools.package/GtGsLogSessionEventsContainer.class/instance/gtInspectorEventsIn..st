ui
gtInspectorEventsIn: aComposite
	<gtInspectorPresentationOrder: 5>
	(aComposite custom: GLMFastTreeTablePresentation new)
		title: 'Events';
		shouldValidate: false;
		allowsRecursiveSearch: false;
		display: [ self containedEvents];
		children: [ :anEvent | anEvent containedEvents ];
		column: 'Type' evaluated: [ :anEvent | anEvent eventTypeName ];
		column: 'Start time' evaluated: [ :anEvent | anEvent startTime ];
		column: 'Session' evaluated: [ :anEvent | anEvent oneLineContents ]
		