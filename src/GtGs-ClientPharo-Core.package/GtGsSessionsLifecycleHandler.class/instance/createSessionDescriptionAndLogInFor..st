private
createSessionDescriptionAndLogInFor: aSessionDescriptionText
	| newSessionDescription sessionFile | 

	newSessionDescription := (TodeObjectSerializer preferredSerializer 
		fromString: aSessionDescriptionText asString) asTDSessionDescription.
	sessionFile := self class sessionDescriptionsFolder / newSessionDescription name.
	sessionFile exists 
		ifTrue: [ self inform: 'A session description with the given name already exists. 
The session description was not saved.' ] 
		ifFalse: [ sessionFile writeStreamDo: [ :aStream |
			STON writer
        		on: aStream;
				prettyPrint: true;
       		nextPut: newSessionDescription ] ].
	self class newClientForSessionDescription: newSessionDescription 
	