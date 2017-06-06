as yet unclassified
oneLineContents
	^ (String streamContents: [ :s |
		self startSignal printOneLineContentsOn: s ])