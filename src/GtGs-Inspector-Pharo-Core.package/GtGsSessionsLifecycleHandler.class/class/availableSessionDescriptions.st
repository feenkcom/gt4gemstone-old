accessing
availableSessionDescriptions
	| sessionDescriptionDir |
	sessionDescriptionDir := GsDevKitSession gsDevKitSessionDescriptionPath asFileReference.
	^ sessionDescriptionDir exists 
		ifFalse: [ #() ]
		ifTrue: [ | sessionDescriptions |
			sessionDescriptions := OrderedCollection new.
			(sessionDescriptionDir files sorted: [ :a :b | a basename <= b basename ])
				collect: [ :file || base |
					base := file basename.
					((base beginsWith: 'README') or: [ base beginsWith: '.' ])
						ifFalse: [ 
							(self createSessionDescriptionFrom: file) 
								ifNotNil: [ :aSessionDescription | sessionDescriptions add: aSessionDescription ] ] ].
			sessionDescriptions ]