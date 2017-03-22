*GtGs-Inspector-Pharo-Core
gtGsLocalBrowsingSelectionActions

	^ GLMRubricSmalltalkCodePresentation new browsingSelectionActions collect: [ :anAction |
		anAction 
			shortcut: nil;
			category: anAction category, ' (local)' ]