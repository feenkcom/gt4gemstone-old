*GtGs-Inspector-Pharo-Core
gtGsPerformRemotelyOn: aGemstoneClient
	^ aGemstoneClient buildRemoteBareProxyFrom: (self sourceNode formattedCode, ' value')