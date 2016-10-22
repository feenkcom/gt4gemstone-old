menu
worldMenuOn: aBuilder 
	<worldMenu> 
	 
	(aBuilder item: #GtGsToos)
		order: 0.5;
		label: 'GT4Gemstone';
		withSeparatorAfter;
		with: [
			(aBuilder item: #'Open sessions handler') 
				order: 0;
				action: [ GtGsSessionsLifecycleHandlerUI open ].
			(aBuilder item: #'Close all sessions (not working yet)')
				order: 2;
				action: [  ];
				withSeparatorAfter ]