*GtGs-Editor-Pharo-Core
categoriesBrowser

	^ GtGsCategoriesBrowser new
		startOnLocalModel: (GtGsCodeBrowserModel new gemstoneClient: self)