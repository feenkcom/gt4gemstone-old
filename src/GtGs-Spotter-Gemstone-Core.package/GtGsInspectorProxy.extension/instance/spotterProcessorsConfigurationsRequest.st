*GtGs-Spotter-Gemstone-Core
spotterProcessorsConfigurationsRequest
	| configurations spotterStep |
	spotterStep := GtGsSpotterStepModel new.
	configurations := OrderedCollection new.
	targetObject gtGsSpotterProcessorsFor: spotterStep.
	spotterStep processors withIndexDo: [ :aSpotterProcessor :anIndex |
		 configurations add: (aSpotterProcessor createConfiguration
			at: 'order' put: anIndex;
			yourself) ].
	"We add the processors to the cache overriding any other value to prevent garbage collection.
	Clients should avoid doing multiple requests if they do not want new processors to be created."
	self cacheAt: 'spotterProcessors' put: spotterStep processors.
	^ self topezServer objectSerializer toString: configurations