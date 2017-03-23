*GtGs-Editor-Pharo-Core
openSymbolDictionariesBrowser

	^ GtGsSymbolDictionariesBrowser
		openOnLocalModel: (GtGsCodeBrowserModel new gemstoneClient: self)