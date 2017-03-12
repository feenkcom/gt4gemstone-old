*GtGs-Inspector-Pharo-Core
gtGsAsRemoteBareProxyOn: aGemstoneClient
	^ aGemstoneClient buildRemoteBareProxyFrom: (self sourceNode formattedCode, ' value')