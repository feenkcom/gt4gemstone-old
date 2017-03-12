*GtGs-Inspector-Pharo-Core
addExplicitNavigationBlockIn: glamourPresentation from: aGemstonePresentation

	glamourPresentation send: [ :aNode |
		aGemstonePresentation  gemstoneClient bareProxyForOopType: 
			(aGemstonePresentation 
				send: #computeSendValueFor:
				to: aGemstonePresentation selfOopType 
				withArgs: { aNode selfOop })  ]