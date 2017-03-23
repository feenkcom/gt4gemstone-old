*GtGs-Inspector-Pharo-Core
setGlamourPresentationAttributesFor: aCodeBrowser
	aCodeBrowser
		title: (self cacheAt: #'title' ifAbsentPut: [ self executeRemotely: #'computeTitle' ]).
	aCodeBrowser gemstoneBrowser: self