*GtGs-Inspector-Pharo-Core
gtGsPerformRemotelyOn: aGemstoneClient with: anArgument
	^ aGemstoneClient buildRemoteBareProxyFrom: (self sourceNode formattedCode, ' value: ', (
		anArgument class = GtGsBareProxy 
			ifTrue:  [ '(Object _objectForOop: ', anArgument selfOop asString, ')' ] 
			ifFalse: [ anArgument printString ] ))