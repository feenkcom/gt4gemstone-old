building actions
globalToolbarActions
	"Return a list of actions that will appear in the toolbar of each window opened
	on this client. Right now there is just the action for opening Spotter. As more
	actions are needed move to a mechanism based on pragmas for finding actions."
	^ { 
		GLMGenericAction new
			action: [ self openRemoteSpotter ];
			icon: (Smalltalk ui icons iconNamed: #smallFindIcon);
			title: 'Open Spotter';
			keymap: Character cr alt }