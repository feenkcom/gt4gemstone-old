*GtGs-Spotter-Gemstone-Core
buildRemoteSpotterProxy
	"I build a remote model for Spotrer and return a proxy to the model object."
	^ (GtGsSpotterModel new topezServer: self) gtGsSerializedInspectorProxy