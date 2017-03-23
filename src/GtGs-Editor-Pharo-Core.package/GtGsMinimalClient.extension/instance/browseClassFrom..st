*GtGs-Editor-Pharo-Core
browseClassFrom: aString

	self categoriesBrowser
		selectClass: aString asSymbol;
		open