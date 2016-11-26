actions
terminate
	self clientSession ifNotNil: [ :aSession | aSession terminate ]
	