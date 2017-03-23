*GtGs-Editor-Pharo-Core
andShowDynamic: aBlock

	self andShow: [ :aComposite |
		aComposite dynamic presentation: aBlock ]