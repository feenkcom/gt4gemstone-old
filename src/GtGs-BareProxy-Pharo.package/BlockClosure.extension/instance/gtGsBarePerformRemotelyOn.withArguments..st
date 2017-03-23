*GtGs-BareProxy-Pharo
gtGsBarePerformRemotelyOn: aGemstoneClient withArguments: arguments

	^ aGemstoneClient buildRemoteBareProxyFrom: (
		self gtGsAsExecutableStringWithArguments: arguments)