*GtGs-Spotter-Gemstone-Core
spotterProcessorsConfigurationsRequest
	| configurations spotterStep |
	spotterStep := GtGsSpotterStepModel new.
	targetObject gtGsSpotterProcessorsFor: spotterStep.
	configurations := spotterStep processors collect: [ :aSpotterProcessor |
		 aSpotterProcessor createConfiguration ].
	"We add the processors to the cache overriding any other value to prevent garbage collection.
	Clients should avoid doing multiple requests if they do not want new processors to be created."
	self cacheAt: 'spotterProcessors' put: spotterStep processors.
	^ self topezServer objectSerializer toString: configurations