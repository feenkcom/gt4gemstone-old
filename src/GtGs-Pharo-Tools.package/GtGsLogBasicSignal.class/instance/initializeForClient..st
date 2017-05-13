initialization
initializeForClient: aGestoneClient
		
	self initializeForSession: aGestoneClient session.
	self properties at: #gemstoneClient put: aGestoneClient.

	self properties at: #sessionName put: aGestoneClient sessionDescription name.	
	self properties at: #userId put: aGestoneClient sessionDescription userId.
	self properties at: #sessionId put: aGestoneClient sessionId.

	self properties at: #clientHash put: aGestoneClient identityHash.
	self properties at: #clientStartTime put: aGestoneClient startTime.
	self properties at: #clientDescription put: ( String 
		streamContents: [ :aStream | aGestoneClient printDetailedDescriptionOn: aStream ]). 