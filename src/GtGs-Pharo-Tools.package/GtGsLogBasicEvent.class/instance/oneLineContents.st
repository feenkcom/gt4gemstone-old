as yet unclassified
oneLineContents
	^ (String streamContents: [ :s |
		self signal printOneLineContentsOn: s ])