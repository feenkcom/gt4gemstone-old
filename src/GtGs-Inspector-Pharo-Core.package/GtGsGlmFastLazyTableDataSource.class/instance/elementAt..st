accessing
elementAt: anIndex
	^ super elementAt: (anIndex + startIndex - 1).
	
	"anIndex > self elements size ifTrue: [
		self ensureLoadingOfElementAt: anIndex ].
	(self elements at: anIndex) isNil ifTrue: [
		self ensureLoadingOfElementAt: anIndex ].
	^ self elements at: anIndex"