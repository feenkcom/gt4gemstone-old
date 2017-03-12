actions api
buildRemoteBareProxyFrom: aString
	^ self bareProxyForOopType: (self session executeString: aString)
