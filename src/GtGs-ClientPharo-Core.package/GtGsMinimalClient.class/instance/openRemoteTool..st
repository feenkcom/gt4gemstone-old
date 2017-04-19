callbacks - services
openRemoteTool: aStonString
	| remoteBrowser |
	
	remoteBrowser := self objectSerializer fromString: aStonString.
	remoteBrowser gtGsAsGlamourPresentation openOn: remoteBrowser.
	^ true