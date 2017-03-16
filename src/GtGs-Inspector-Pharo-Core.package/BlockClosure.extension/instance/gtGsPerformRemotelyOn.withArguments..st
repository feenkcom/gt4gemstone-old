*GtGs-Inspector-Pharo-Core
gtGsPerformRemotelyOn: aGemstoneClient withArguments: arguments

	^ aGemstoneClient buildRemoteBareProxyFrom: (
		self gtGsAsExecutableStringWithArguments: arguments)