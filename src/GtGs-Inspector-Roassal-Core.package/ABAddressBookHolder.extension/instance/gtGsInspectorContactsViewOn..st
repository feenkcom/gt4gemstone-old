*GtGs-Inspector-Roassal-Core
gtGsInspectorContactsViewOn: aComposite
	<gtInspectorPresentationOrder: 5>
	
	aComposite localRoassal2 
		title: 'Contacts (cluster)';
		display: [ self asOop ];
		localSelector: #holderViewOn:for:;
		localClassName: #'ABRoassalViews';
		initialViewType: #'RTMondrian'
		