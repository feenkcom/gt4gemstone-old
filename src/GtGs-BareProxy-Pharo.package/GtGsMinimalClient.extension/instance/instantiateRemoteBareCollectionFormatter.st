*GtGs-BareProxy-Pharo
instantiateRemoteBareCollectionFormatter
	^ self instantiateRemoteCollectionFormatter
		serializer: GtGsBareCollectionSerializationStrategy new;
		remoteFormat: [ :anObject | anObject asString ];
		yourself