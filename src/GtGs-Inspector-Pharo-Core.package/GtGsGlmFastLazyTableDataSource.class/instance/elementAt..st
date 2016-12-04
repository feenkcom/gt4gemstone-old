as yet unclassified
elementAt: anIndex

	anIndex > self elements size ifTrue: [
		self ensureLoadingOfElementAt: anIndex ].
	^ self elements at: anIndex