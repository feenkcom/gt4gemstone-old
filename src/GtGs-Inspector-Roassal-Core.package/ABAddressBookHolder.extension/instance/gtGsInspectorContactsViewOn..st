*GtGs-Inspector-Roassal-Core
gtGsInspectorContactsViewOn: aComposite
	<gtInspectorPresentationOrder: 30>
	1 to: self addressBooks size do: [ :anIndex |
		(self addressBooks at: anIndex) contacts size > 100 ifTrue: [ ^ nil ] ].
	aComposite localRoassal2 
		title: 'Contacts (cluster)';
		display: [ self ];
		initialViewType: #'RTMondrian';
		viewBuilder: #'ABRoassalViews' selector: #holderViewOn:for:
		