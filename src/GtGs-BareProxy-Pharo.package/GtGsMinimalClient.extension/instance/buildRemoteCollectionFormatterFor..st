*GtGs-BareProxy-Pharo
buildRemoteCollectionFormatterFor: anExecutableString
	^ self instantiateRemoteCollectionFormatter
		objectAccessorCommand: anExecutableString;
		yourself