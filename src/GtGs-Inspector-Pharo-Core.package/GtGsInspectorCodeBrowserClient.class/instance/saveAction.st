actions
saveAction

	^ GLMGenericAction new
			title: 'Do it and go (remote)';
			action: [ :aPresentation |
				self saveCode: aPresentation text asString inMethodNode: aPresentation entity first.
				self update ];  
			shortcut: $s; 
			withSeparatorBefore;
			yourself
		