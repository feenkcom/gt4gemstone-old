*GtGs-Spotter-Pharo-Core
buildRemoteSpotterProxy
	"I build a remote model for Spotrer and return a proxy to the model object."
	^ self 
		buildRemoteInspectorProxyFromSelector: #buildRemoteSpotterProxy 
		withArguments: #()
		withRunner: self todeServerOopType