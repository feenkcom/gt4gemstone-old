*GtGs-Inspector-Pharo-Core
addExplicitBareNavigationBlockIn: glamourPresentation from: aGemstonePresentation

	glamourPresentation send: [ :aNode |
		aGemstonePresentation  gemstoneClient 
			bareProxyForOopType: 
				(aGemstonePresentation gemstoneClient
					send: #computeSendValueFor:
					to: aGemstonePresentation selfOopType 
					withArgs: { aNode selfOop })  
			ofType: GtGsBareProxy ]