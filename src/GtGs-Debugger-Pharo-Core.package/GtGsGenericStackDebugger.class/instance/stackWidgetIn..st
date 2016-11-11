building presentations
stackWidgetIn: composite

	^ composite list	
		title: 'Stack';
		display: [:aSession | self retrieveStackFrom: aSession]