instance creation
forDefaultSessionDescription
	| sessionDescription |
	sessionDescription := GsDevKit_home sessionDescriptionNamed: SCIGemStoneServerConfigSpec defaultSessionName.
	^ self loginWith: sessionDescription