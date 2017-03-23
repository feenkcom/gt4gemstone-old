testing
isProxyObjectActive
	^ self gemstoneClient 
		ifNil: [ false ] 
		ifNotNil: [ :aGemstoneClient | aGemstoneClient isActive ] 