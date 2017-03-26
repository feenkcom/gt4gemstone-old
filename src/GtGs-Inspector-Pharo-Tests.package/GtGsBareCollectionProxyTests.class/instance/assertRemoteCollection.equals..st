assertions
assertRemoteCollection: remoteCollectionProxy equals: expectedLocalCollection
	| remoteSize obainedCollection |
	
	remoteSize := remoteCollectionProxy size.
	self assert: remoteSize equals: expectedLocalCollection size.
	obainedCollection := Array new: remoteSize.
	1 to: remoteSize do: [ :anIndex | 
		obainedCollection at: anIndex put: (remoteCollectionProxy at: anIndex) ].
	self assertCollection: obainedCollection equals: expectedLocalCollection.