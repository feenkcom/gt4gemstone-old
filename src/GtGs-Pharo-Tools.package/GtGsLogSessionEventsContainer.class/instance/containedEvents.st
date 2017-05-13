accessing
containedEvents
	^ events ifNil: [ events := OrderedCollection new ]