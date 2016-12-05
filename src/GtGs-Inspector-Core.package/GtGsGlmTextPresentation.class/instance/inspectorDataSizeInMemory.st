accessing
inspectorDataSizeInMemory
	| dataSizeInMemory cachedDisplayValue |
	dataSizeInMemory := self physicalSize + self cache physicalSize.  
	cachedDisplayValue := self cacheAt: #displayValue ifAbsent: [ ^ dataSizeInMemory ].
	^ dataSizeInMemory + cachedDisplayValue inspectorDataSizeInMemory