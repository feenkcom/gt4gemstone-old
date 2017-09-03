initialization
avaratFor: aContact

	^ (aContact avatarId 
			ifNil: [Form extent: 16@16]
			ifNotNil: [ |fileName|
				fileName := 'data/icons/', self contact avatarId.
				fileName asFileReference exists 
					ifTrue:  [ PNGReadWriter formFromFileNamed: ('data/icons/', self contact avatarId) ]
					ifFalse: [ Form extent: 16@16 ] ])