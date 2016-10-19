scripting actions
gsAct: aBlock on: aCharacter entitled: aString

	^ self gsActions add: (GtGsPresentationAction new 
		title: aString;
		actionBlock: aBlock;
		shortcut: aCharacter)