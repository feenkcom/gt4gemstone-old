accessing
gemstoneClient
	^ self session ifNotNil: [ :aSession | aSession gemstoneClient ]