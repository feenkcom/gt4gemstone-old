*GtGs-BareProxy-Pharo
buildRemoteBareCollectionFormatterFor: anExecutableString
	^ self instantiateRemoteBareCollectionFormatter
		objectAccessorCommand: anExecutableString;
		yourself