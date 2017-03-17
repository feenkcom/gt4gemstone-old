*GtGs-Editor-Pharo-Core
gtGsAsGlamourPresentationOn: aComposite

	^ aComposite text
		display: [ self truncateWithElipsisTo: 100000 ]