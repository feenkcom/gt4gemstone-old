*GtGs-Spotter-Pharo-Core
openRemoteSpotter
	| spotterModel |
	GTSpotterGlobalShortcut reset.
	
	spotterModel := GtGsRawSpotter new.
	GTSpotterMorph new
		extent: (World width / 2.25 @ (World height / 1.25)) asIntegerPoint;
		spotterModel: (spotterModel
			gemstoneClient: self;
			hidePreview;
			makeStandalone;
			yourself);
	openCenteredInWorld.
	"	openInWindowLabeled: 'Gemstone Spotter'."
		
	spotterModel class markOpened.