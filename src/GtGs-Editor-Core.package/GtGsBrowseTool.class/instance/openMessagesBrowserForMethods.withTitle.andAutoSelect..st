opening
openMessagesBrowserForMethods: methodRefs withTitle: aTitle andAutoSelect: aString

	"Do not open am empty message browser. Raise a notification instead."
	methodRefs size = 0 ifTrue: [
		self topezServer topezClientForwarder 
			inform: 'No ', aTitle].

	GtGsMessagesBrowser new 
		title: aTitle, ' [', methodRefs size asString, ']';
		selectionString: aString;
		updateForOwner: self topezServer;
		startOn: methodRefs;
		open