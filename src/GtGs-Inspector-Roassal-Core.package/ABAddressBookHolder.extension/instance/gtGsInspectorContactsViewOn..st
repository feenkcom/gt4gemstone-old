*GtGs-Inspector-Roassal-Core
gtGsInspectorContactsViewOn: aComposite
	<gtInspectorPresentationOrder: 30>
	
	aComposite localRoassal2 
		title: 'Contacts (cluster)';
		display: [ self ];
		initialViewType: #'RTMondrian';
		viewBuilder: #'ABRoassalViews' selector: #holderViewOn:for:
		