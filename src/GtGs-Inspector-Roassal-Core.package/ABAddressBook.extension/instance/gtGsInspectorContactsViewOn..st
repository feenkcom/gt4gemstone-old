*GtGs-Inspector-Roassal-Core
gtGsInspectorContactsViewOn: aComposite
	<gtInspectorPresentationOrder: 30>
	self contacts size > 100 ifTrue: [ ^ nil ].
	aComposite localRoassal2 
		title: 'Contacts (cluster)';
		display: [ self ];
		initialViewType: #'RTMondrian';
		viewBuilder: #'ABRoassalViews' selector: #addressBookViewOn:for:
		