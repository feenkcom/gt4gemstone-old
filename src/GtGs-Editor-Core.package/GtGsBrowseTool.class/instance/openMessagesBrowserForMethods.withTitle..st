opening
openMessagesBrowserForMethods: methodRefs withTitle: aTitle

	GtGsMessagesBrowser new 
		title: aTitle, ' [', methodRefs size asString, ']';
		updateForOwner: self topezServer;
		startOn: methodRefs;
		open