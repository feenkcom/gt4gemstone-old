private
deleteSessionDescription: aSessionDescription
	| sessionFile | 
	
	sessionFile := GsDevKitSession gsDevKitSessionDescriptionPath asFileReference / aSessionDescription name.
	sessionFile exists 
		ifTrue: [ 
			sessionFile delete.
			self inform: 'Session description deleted successfully.' ] 