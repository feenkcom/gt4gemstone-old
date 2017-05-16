*GtGs-Spotter-Pharo-Core
gemstoneListProcessor
	| processor |
	processor := GTSpotterGemstoneCandidatesListProcessor new.
	self addProcessor: processor.
	^ processor