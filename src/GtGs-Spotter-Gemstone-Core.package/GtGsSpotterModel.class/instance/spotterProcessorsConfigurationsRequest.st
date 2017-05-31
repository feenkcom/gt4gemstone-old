callbacks
spotterProcessorsConfigurationsRequest
	"introduce here an origin; then processors will be"
	| configurations |
	spotterStep := GtGsSpotterStepModel new.
	self gtGsSpotterProcessorsFor: spotterStep.
	configurations := spotterStep processors collect: [ :aSpotterProcessor |
		 aSpotterProcessor createConfiguration ].
	^ self topezServer objectSerializer toString: configurations