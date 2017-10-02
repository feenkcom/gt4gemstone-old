private
avaratFor: aContact

	^ aContact avatarId 
		ifNil:  [ self formFromMorph: aContact fullName asMorph asReadOnlyMorph ]
		ifNotNil: [
			|fileName|
			fileName := 'data/icons/', aContact avatarId.
			fileName asFileReference exists 
				ifTrue:  [ PNGReadWriter formFromFileNamed: ('data/icons/', aContact avatarId) ]
				ifFalse: [ self formFromMorph: aContact fullName asMorph asReadOnlyMorph ]
	 ]