private
createSessionDescriptionFrom: aFile

	[ ^ TDSessionDescription importFrom: aFile fullName ]
		on: Error
		do: [ :ex | 
			Transcript
				cr;
				show: 'Error importing session description from: ' , aFile fullName printString , ': ' , ex description.
			^ nil ].