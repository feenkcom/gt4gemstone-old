*GtGs-Inspector-Pharo-Core
addExplicitNavigationBlockIn: glamourPresentation from: aGemstonePresentation

	glamourPresentation send: [ :aNode | |serializedProxy|
		serializedProxy := aGemstonePresentation 
			executeRemotely: #computeNextInspectorProxyFor:andSelect:
			withArguments: { 
					aNode selfOop. aGemstonePresentation gemstoneClient objectSerializer toString: nil }.
			serializedProxy
				gemstoneClient: aGemstonePresentation gemstoneClient;
				yourself ]