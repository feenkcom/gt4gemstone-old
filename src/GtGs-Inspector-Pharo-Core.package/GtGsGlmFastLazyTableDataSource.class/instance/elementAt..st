accessing
elementAt: anIndex
	^ super elementAt: (self translateIndex: anIndex).
	
	"anIndex > self elements size ifTrue: [
		self ensureLoadingOfElementAt: anIndex ].
	(self elements at: anIndex) isNil ifTrue: [
		self ensureLoadingOfElementAt: anIndex ].
	^ self elements at: anIndex"