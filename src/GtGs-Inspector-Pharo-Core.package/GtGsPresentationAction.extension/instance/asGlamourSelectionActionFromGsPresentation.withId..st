*GtGs-Inspector-Pharo-Core
asGlamourSelectionActionFromGsPresentation: aGsPresentation withId: anInteger
	"I convert a Glamour GemStone action to a Glamour action for Pharo.
	I should only be used for selection actions, as I also handle the selection."
	
	^ GLMGenericAction new 
		title: self title;
		shortcut: self shortcut;
		action: [ :aPresentation | 
			aGsPresentation 
				executeRemotelySelectionActionWithId: anInteger 
				forPresentation: aPresentation ]