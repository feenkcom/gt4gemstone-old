callbacks - services
openRemoteTool: aStonString
	| remoteBrowser |
	
	remoteBrowser := self objectSerializer fromString: aStonString.
	remoteBrowser gemstoneClient: self.
	remoteBrowser gtGsAsGlamourPresentation openOn: remoteBrowser.
	^ true