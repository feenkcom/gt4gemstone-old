accessing
avatar
	"No avatar for now."
	^ nil "Form extent: 16@16"
	"^ self avatarId 
		ifNil: [ Form extent: 16@16 ] 
		ifNotNil: [ (PNGReadWriter formFromFileNamed: ('data/icons/', self avatarId))  ]"