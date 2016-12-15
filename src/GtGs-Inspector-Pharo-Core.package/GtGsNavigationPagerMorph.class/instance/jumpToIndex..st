actions
jumpToIndex: anIndexString
	| anIndex |
	
	anIndexString isAllDigits ifFalse: [ 
		self inform: 'Only digits allowed'.
		^ self ].
	anIndex := anIndexString asInteger.
	(anIndex < 1 or: [ anIndex > dataSource totalNumberOfRows ]) ifTrue: [
		self inform: 'The entered index is out of bounds'.
		^ self ].
	
	dataSource jumpToIndex: anIndex.
	self buildPanel.
	
	^ true