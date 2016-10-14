instance creation
forSessionDescriptionNamed: aSessionDescriptionOrStoneName
	| sessionDescription |
	sessionDescription := GsDevKit_home sessionDescriptionNamed: aSessionDescriptionOrStoneName.
	^ self loginWith: sessionDescription