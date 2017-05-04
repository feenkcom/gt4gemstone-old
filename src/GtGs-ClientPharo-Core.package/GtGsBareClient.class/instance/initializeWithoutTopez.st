login/logout
initializeWithoutTopez
	| authorId |
	authorId := self sessionDescription authorId.
	authorId isEmpty
		ifTrue: [ authorId := Author fullName ].
	self executeString: 'GsPackagePolicy current authorInitials: ''', authorId, ''''.