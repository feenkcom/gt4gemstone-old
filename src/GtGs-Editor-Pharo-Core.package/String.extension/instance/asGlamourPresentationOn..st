*GtGs-Editor-Pharo-Core
asGlamourPresentationOn: aComposite

	^ aComposite text
		display: [ self truncateWithElipsisTo: 100000 ]