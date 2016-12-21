as yet unclassified
initializeForClient: aGestoneClient
		
	self properties at: #sessionName put: aGestoneClient sessionDescription name.
	self properties at: #sessionHash put: aGestoneClient session identityHash.
	
	self properties at: #userId put: aGestoneClient sessionDescription userId.

	self properties at: #clientHash put: aGestoneClient identityHash.
	self properties at: #clientStartTime put: aGestoneClient startTime.
	self properties at: #clientDescription put: ( String 
		streamContents: [ :aStream | aGestoneClient printDetailedDescriptionOn: aStream ]). 