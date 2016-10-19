*GtGs-Inspector-Pharo-Core
asGlamourActionFromGsPresentation: aGsPresentation withId: anInteger

	^ GLMGenericAction new 
		title: self title;
		shortcut: self shortcut;
		action: [ 
			aGsPresentation executeRemotelyActionWithId: anInteger ]