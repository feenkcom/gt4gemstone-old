scripting actions
gsSelectionAct: aBlock on: aCharacter entitled: aString

	self gsSelectionActions add: (GtGsPresentationAction new 
		title: aString;
		actionBlock: aBlock;
		shortcut: aCharacter)