opening
openMessagesBrowserForMethods: methodRefs withTitle: aTitle andAutoSelect: aString

	GtGsMessagesBrowser new 
		title: aTitle, ' [', methodRefs size asString, ']';
		selectionString: aString;
		updateForOwner: self topezServer;
		startOn: methodRefs;
		open