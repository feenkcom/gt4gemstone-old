accessing
defaultClientType
	^ defaultClientType ifNil: [ GtGsBareClient name asSymbol ]