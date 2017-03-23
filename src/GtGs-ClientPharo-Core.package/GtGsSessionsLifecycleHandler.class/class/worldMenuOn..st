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
				action: [ self open ];
				withSeparatorAfter.
			(aBuilder item: #'Logout from all sessions')
				order: 2;
				action: [ self logoutGemstoneClients ].
			(aBuilder item: #'Remove all sessions')
				order: 2;
				action: [ self removeGemstoneClients ] ]