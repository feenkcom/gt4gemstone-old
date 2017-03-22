*GtGs-BareProxy-Pharo
gtGsPerformRemotelyOn: aGemstoneClient withArguments: arguments

	^ aGemstoneClient buildRemoteBareProxyFrom: (
		self gtGsAsExecutableStringWithArguments: arguments)