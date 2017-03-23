private
deleteSessionDescription: aSessionDescription
	| sessionFile | 
	
	sessionFile := self class sessionDescriptionsFolder / aSessionDescription name.
	sessionFile exists 
		ifTrue: [ 
			sessionFile delete.
			self inform: 'Session description deleted successfully.' ] 