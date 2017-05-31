*GtGs-Spotter-Pharo-Core
buildRemoteSpotterModel
	"I build a remote model for Spotrer and return a proxy to the model object."
	^ GtGsSpotter instantiateUsingGemstoneClient: self