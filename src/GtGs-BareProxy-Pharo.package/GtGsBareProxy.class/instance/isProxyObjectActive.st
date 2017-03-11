testing
isProxyObjectActive
	^ self gemstoneClient 
		ifNil: [ false ] 
		ifNotNil: [ :aGemstoneClien | aGemstoneClien isActive ] 