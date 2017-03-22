private
createSessionDescriptionAndLogIn
	| contents newSessionDescription sessionFile | 

	contents := (self newSessionDescriptionContents) ifNil: [^ self].
	newSessionDescription := (TodeObjectSerializer preferredSerializer 
		fromString: contents asString) asTDSessionDescription.
	sessionFile := GsDevKitSession gsDevKitSessionDescriptionPath asFileReference / newSessionDescription name.
	sessionFile exists 
		ifTrue: [ self inform: 'A session description with the given name already exists. 
The session description was not saved.' ] 
		ifFalse: [ sessionFile writeStreamDo: [ :aStream |
			STON writer
        		on: aStream;
				prettyPrint: true;
       		nextPut: newSessionDescription ] ].
	self class newClientForSessionDescription: newSessionDescription 
	