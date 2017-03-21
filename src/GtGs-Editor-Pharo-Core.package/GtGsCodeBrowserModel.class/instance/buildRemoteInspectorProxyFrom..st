actions - remote
buildRemoteInspectorProxyFrom: aString

	"[ :topezServer :targetString :currentClassName |
		topezServer 
			performStringAndBuildProxyFor: targetString 
			inContext: ((GsSession currentSession symbolList 
				objectNamed: currentClassName asSymbol) ) ]."


	^ self gemstoneClient buildRemoteInspectorProxyFrom: aString 