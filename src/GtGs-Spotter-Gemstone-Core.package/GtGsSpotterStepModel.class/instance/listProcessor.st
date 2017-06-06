scripting
listProcessor
	| processor |
	processor := GtGsSpotterCandidatesListProcessorModel new.
	self addProcessor: processor.
	^ processor