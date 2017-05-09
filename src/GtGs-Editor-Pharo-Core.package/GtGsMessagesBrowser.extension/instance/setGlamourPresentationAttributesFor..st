*GtGs-Editor-Pharo-Core
setGlamourPresentationAttributesFor: aCodeBrowser
	super setGlamourPresentationAttributesFor: aCodeBrowser.
	
	aCodeBrowser
		title: aCodeBrowser title, ' - ', gemstoneClient detailedDescription.