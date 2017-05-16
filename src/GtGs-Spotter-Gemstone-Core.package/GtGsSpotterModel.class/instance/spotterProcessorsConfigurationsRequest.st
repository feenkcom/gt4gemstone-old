callbacks
spotterProcessorsConfigurationsRequest
	"introduce here an origin; then processors will be"
	| spotterStep configurations |
	spotterStep := GtGsSpotterStepModel new.
	self gtGsSpotterProcessorsFor: spotterStep.
	configurations := spotterStep processors collect: [ :aSpotterProcessor |
		 aSpotterProcessor createConfiguration ].
	^ self topezServer toString: configurations